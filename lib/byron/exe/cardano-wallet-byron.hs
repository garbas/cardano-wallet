{-# LANGUAGE AllowAmbiguousTypes #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE TypeApplications #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}

-- |
-- Copyright: © 2018-2020 IOHK
-- License: Apache-2.0
--
-- This module parses command line arguments for the wallet and executes
-- corresponding commands.
--
-- In essence, it's a proxy to the wallet server, which is required for most
-- commands. Commands are turned into corresponding API calls, and submitted
-- to an up-and-running server. Some commands do not require an active server
-- and can be run "offline".

module Main where

import Prelude

import Cardano.BM.Data.Severity
    ( Severity (..) )
import Cardano.BM.Trace
    ( Trace, appendName, logDebug, logInfo, logNotice )
import Cardano.CLI
    ( LoggingOptions (..)
    , cli
    , cmdKey
    , cmdMnemonic
    , cmdNetwork
    , cmdVersion
    , databaseOption
    , enableWindowsANSI
    , helperTracing
    , hostPreferenceOption
    , listenOption
    , loggingOptions
    , loggingSeverityOrOffReader
    , optionT
    , runCli
    , setupDirectory
    , shutdownHandlerFlag
    , syncToleranceOption
    , withLogging
    )
import Cardano.Startup
    ( ShutdownHandlerLog
    , installSignalHandlers
    , withShutdownHandler
    , withUtf8Encoding
    )
import Cardano.Wallet.Api.Server
    ( HostPreference, Listen (..) )
import Cardano.Wallet.Byron
    ( SomeNetworkDiscriminant (..)
    , TracerSeverities
    , Tracers
    , Tracers' (..)
    , serveWallet
    , setupTracers
    , tracerDescriptions
    , tracerLabels
    )
import Cardano.Wallet.Byron.Compatibility
    ( KnownNetwork (..), NodeVersionData, emptyGenesis )
import Cardano.Wallet.Byron.Network
    ( localSocketAddrInfo )
import Cardano.Wallet.Logging
    ( trMessage, transformTextTrace )
import Cardano.Wallet.Primitive.AddressDerivation
    ( NetworkDiscriminant (..) )
import Cardano.Wallet.Primitive.Types
    ( BlockchainParameters, ProtocolMagic (..), SyncTolerance )
import Cardano.Wallet.Version
    ( GitRevision, Version, gitRevision, showFullVersion, version )
import Control.Applicative
    ( Const (..), optional, (<|>) )
import Control.Monad
    ( void )
import Control.Tracer
    ( contramap )
import Data.Proxy
    ( Proxy (..) )
import Data.Text
    ( Text )
import Data.Text.Class
    ( ToText (..) )
import GHC.TypeLits
    ( KnownNat, SomeNat (..), someNatVal )
import Network.Socket
    ( SockAddr )
import Options.Applicative
    ( CommandFields
    , Mod
    , Parser
    , command
    , flag'
    , help
    , helper
    , info
    , internal
    , long
    , metavar
    , option
    , progDesc
    , value
    )
import System.Environment
    ( getArgs, getExecutablePath )
import System.Exit
    ( exitWith )

import qualified Data.Text as T

{-------------------------------------------------------------------------------
                              Main entry point
-------------------------------------------------------------------------------}

main :: IO ()
main = withUtf8Encoding $ do
    enableWindowsANSI
    runCli $ cli $ mempty
        <> cmdServe
        <> cmdMnemonic
        <> cmdKey
        <> cmdNetwork
        <> cmdVersion

beforeMainLoop
    :: Trace IO MainLog
    -> SockAddr
    -> IO ()
beforeMainLoop tr =
    logInfo tr . MsgListenAddress

{-------------------------------------------------------------------------------
                            Command - 'serve'
-------------------------------------------------------------------------------}

-- | Arguments for the 'serve' command
data ServeArgs = ServeArgs
    { _hostPreference :: HostPreference
    , _listen :: Listen
    , _nodeSocket :: FilePath
    , _networkDiscriminant :: SomeNetworkDiscriminant
    , _database :: Maybe FilePath
    , _syncTolerance :: SyncTolerance
    , _enableShutdownHandler :: Bool
    , _logging :: LoggingOptions TracerSeverities
    } deriving (Show)

cmdServe
    :: Mod CommandFields (IO ())
cmdServe = command "serve" $ info (helper <*> helper' <*> cmd) $ mempty
    <> progDesc "Serve API that listens for commands/actions."
  where
    helper' = helperTracing tracerDescriptions

    cmd = fmap exec $ ServeArgs
        <$> hostPreferenceOption
        <*> listenOption
        <*> nodeSocketOption
        <*> networkDiscriminantFlag
        <*> optional databaseOption
        <*> syncToleranceOption
        <*> shutdownHandlerFlag
        <*> loggingOptions tracerSeveritiesOption
    exec
        :: ServeArgs
        -> IO ()
    exec args@(ServeArgs
      host
      listen
      nodeSocket
      network@(SomeNetworkDiscriminant proxy)
      databaseDir
      sTolerance
      enableShutdownHandler
      logOpt) = do
        let addrInfo = localSocketAddrInfo nodeSocket
        let networkParams = knownParameters proxy
        withTracers logOpt $ \tr tracers -> do
            installSignalHandlers (logNotice tr MsgSigTerm)
            withShutdownHandlerMaybe tr enableShutdownHandler $ do
                logDebug tr $ MsgServeArgs args
                whenJust databaseDir $ setupDirectory (logInfo tr . MsgSetupDatabases)
                exitWith =<< serveWallet
                    network
                    tracers
                    sTolerance
                    databaseDir
                    host
                    listen
                    addrInfo
                    (emptyGenesis (fst networkParams))
                    networkParams
                    (beforeMainLoop tr)

    knownParameters
        :: forall n. (KnownNetwork n)
        => Proxy n
        -> (BlockchainParameters, NodeVersionData)
    knownParameters _proxy =
        ( blockchainParameters @n, versionData @n )

    whenJust m fn = case m of
       Nothing -> pure ()
       Just a  -> fn a

    withShutdownHandlerMaybe _ False = void
    withShutdownHandlerMaybe tr True = void . withShutdownHandler trShutdown
      where
        trShutdown = trMessage (contramap (fmap MsgShutdownHandler) tr)

{-------------------------------------------------------------------------------
                                 Options
-------------------------------------------------------------------------------}

-- | --node-socket=FILE
nodeSocketOption :: Parser FilePath
nodeSocketOption = optionT $ mempty
    <> long "node-socket"
    <> metavar "FILE"
    <> help "Path to the node's domain socket."

-- | --mainnet|--testnet NETWORK_DISCRIMINANT
networkDiscriminantFlag :: Parser SomeNetworkDiscriminant
networkDiscriminantFlag =
    mainnetFlag <|> testnetOption
  where
    mainnetFlag = flag' (SomeNetworkDiscriminant $ Proxy @'Mainnet) $ mempty
        <> long "mainnet"

    testnetOption = fmap someTestnetDiscriminant $ optionT $ mempty
        <> long "testnet"
        <> metavar "NETWORK_MAGIC"
      where
        someTestnetDiscriminant :: ProtocolMagic -> SomeNetworkDiscriminant
        someTestnetDiscriminant (ProtocolMagic pm) =
            case someNatVal (fromIntegral pm) of
                Just (SomeNat proxy) -> SomeNetworkDiscriminant $ mapProxy proxy
                _ -> error "networkDiscriminantFlag: impossible: failed to \
                    \convert ProtocolMagic to SomeNat."

        mapProxy :: forall pm. KnownNat pm => Proxy pm -> Proxy (Testnet pm)
        mapProxy _proxy = Proxy @('Testnet pm)

tracerSeveritiesOption :: Parser TracerSeverities
tracerSeveritiesOption = Tracers
    <$> traceOpt applicationTracer (Just Info)
    <*> traceOpt apiServerTracer (Just Info)
    <*> traceOpt walletEngineTracer (Just Info)
    <*> traceOpt walletDbTracer (Just Info)
    <*> traceOpt ntpClientTracer (Just Info)
  where
    traceOpt field def = fmap Const . option loggingSeverityOrOffReader $ mempty
        <> long ("trace-" <> T.unpack (getConst (field tracerLabels)))
        <> value def
        <> metavar "SEVERITY"
        <> internal

{-------------------------------------------------------------------------------
                                    Logging
-------------------------------------------------------------------------------}

-- FIXME: reduce duplication. See 'cardano-wallet-jormungandr.hs'

data MainLog
    = MsgCmdLine String [String]
    | MsgVersion Version GitRevision
    | MsgSetupStateDir Text
    | MsgSetupDatabases Text
    | MsgServeArgs ServeArgs
    | MsgListenAddress SockAddr
    | MsgSigTerm
    | MsgShutdownHandler ShutdownHandlerLog
    deriving (Show)

instance ToText MainLog where
    toText msg = case msg of
        MsgCmdLine exe args ->
            T.pack $ unwords ("Command line:":exe:args)
        MsgVersion ver rev ->
            "Running as v" <> T.pack (showFullVersion ver rev)
        MsgSetupStateDir txt ->
            "Wallet state: " <> txt
        MsgSetupDatabases txt ->
            "Wallet databases: " <> txt
        MsgServeArgs args ->
            T.pack $ show args
        MsgListenAddress addr ->
            "Wallet backend server listening on " <> T.pack (show addr)
        MsgSigTerm ->
            "Terminated by signal."
        MsgShutdownHandler msg' ->
            toText msg'

withTracers
    :: LoggingOptions TracerSeverities
    -> (Trace IO MainLog -> Tracers IO -> IO a)
    -> IO a
withTracers logOpt action =
    withLogging Nothing (loggingMinSeverity logOpt) $ \(_, tr) -> do
        let trMain = appendName "main" (transformTextTrace tr)
        let tracers = setupTracers (loggingTracers logOpt) tr
        logInfo trMain $ MsgVersion version gitRevision
        logInfo trMain =<< MsgCmdLine <$> getExecutablePath <*> getArgs
        action trMain tracers
