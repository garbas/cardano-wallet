{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}

module Cardano.Wallet.Shelley.Launch.Blockfrost
    ( CredFilePath
    , Secret
    , readSecret
    , lightOption
    ) where

import Prelude

import Data.Text
    ( Text, strip )
import Options.Applicative
    ( Parser, auto, help, long, metavar, option )

import qualified Data.Text.IO as TIO

newtype CredFilePath = CredFilePath FilePath
    deriving newtype (Eq, Show, Read)

newtype Secret = Secret Text

-- | --light CRED
lightOption :: Parser CredFilePath
lightOption = option auto $ mconcat
    [ long "light"
    , metavar "CRED"
    , help $ mconcat
        [ "Start wallet in the light mode.\n"
        , "The value CRED is a reference to a file "
        , "which contains a secret token as provided by the "
        , "BlockFronst Cardano API (https://blockfrost.io)."
        ]
    ]

readSecret :: CredFilePath -> IO Secret
readSecret (CredFilePath fp) = Secret . strip <$> TIO.readFile fp
