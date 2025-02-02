{
  pkgs = hackage:
    {
      packages = {
        "charset".revision = (((hackage."charset")."0.3.9").revisions).default;
        "ghc-boot".revision = (((hackage."ghc-boot")."8.10.7").revisions).default;
        "x509-validation".revision = (((hackage."x509-validation")."1.6.11").revisions).default;
        "mmorph".revision = (((hackage."mmorph")."1.1.5").revisions).default;
        "byteorder".revision = (((hackage."byteorder")."1.0.4").revisions).default;
        "ghc-boot-th".revision = (((hackage."ghc-boot-th")."8.10.7").revisions).default;
        "call-stack".revision = (((hackage."call-stack")."0.4.0").revisions).default;
        "ghc-prim".revision = (((hackage."ghc-prim")."0.6.1").revisions).default;
        "cborg".revision = (((hackage."cborg")."0.2.6.0").revisions).default;
        "cborg".flags.optimize-gmp = true;
        "distributive".revision = (((hackage."distributive")."0.6.2.1").revisions).default;
        "distributive".flags.tagged = true;
        "distributive".flags.semigroups = true;
        "streaming-commons".revision = (((hackage."streaming-commons")."0.2.2.3").revisions).default;
        "streaming-commons".flags.use-bytestring-builder = false;
        "asn1-encoding".revision = (((hackage."asn1-encoding")."0.9.6").revisions).default;
        "pretty".revision = (((hackage."pretty")."1.1.3.6").revisions).default;
        "network-uri".revision = (((hackage."network-uri")."2.6.4.1").revisions).default;
        "repline".revision = (((hackage."repline")."0.4.0.0").revisions).default;
        "indexed-traversable".revision = (((hackage."indexed-traversable")."0.1.2").revisions).default;
        "haskeline".revision = (((hackage."haskeline")."0.8.2").revisions).default;
        "Diff".revision = (((hackage."Diff")."0.4.1").revisions).default;
        "integer-logarithms".revision = (((hackage."integer-logarithms")."1.0.3.1").revisions).default;
        "integer-logarithms".flags.check-bounds = false;
        "integer-logarithms".flags.integer-gmp = true;
        "regex-tdfa".revision = (((hackage."regex-tdfa")."1.3.1.1").revisions).default;
        "regex-tdfa".flags.force-o2 = false;
        "async".revision = (((hackage."async")."2.2.4").revisions).default;
        "async".flags.bench = false;
        "text".revision = (((hackage."text")."1.2.4.1").revisions).default;
        "base".revision = (((hackage."base")."4.14.3.0").revisions).default;
        "hourglass".revision = (((hackage."hourglass")."0.2.12").revisions).default;
        "time".revision = (((hackage."time")."1.9.3").revisions).default;
        "lens-family-core".revision = (((hackage."lens-family-core")."2.1.0").revisions).default;
        "adjunctions".revision = (((hackage."adjunctions")."4.4").revisions).default;
        "bifunctors".revision = (((hackage."bifunctors")."5.5.11").revisions).default;
        "bifunctors".flags.tagged = true;
        "bifunctors".flags.semigroups = true;
        "kan-extensions".revision = (((hackage."kan-extensions")."5.2.3").revisions).default;
        "cabal-doctest".revision = (((hackage."cabal-doctest")."1.0.9").revisions).default;
        "parsers".revision = (((hackage."parsers")."0.12.10").revisions).default;
        "parsers".flags.binary = true;
        "parsers".flags.parsec = true;
        "parsers".flags.attoparsec = true;
        "random".revision = (((hackage."random")."1.2.1").revisions).default;
        "dlist".revision = (((hackage."dlist")."1.0").revisions).default;
        "dlist".flags.werror = false;
        "unordered-containers".revision = (((hackage."unordered-containers")."0.2.16.0").revisions).default;
        "unordered-containers".flags.debug = false;
        "megaparsec".revision = (((hackage."megaparsec")."9.0.1").revisions).default;
        "megaparsec".flags.dev = false;
        "array".revision = (((hackage."array")."0.5.4.0").revisions).default;
        "base64-bytestring".revision = (((hackage."base64-bytestring")."1.2.1.0").revisions).default;
        "cereal".revision = (((hackage."cereal")."0.5.8.2").revisions).default;
        "cereal".flags.bytestring-builder = false;
        "cookie".revision = (((hackage."cookie")."0.4.5").revisions).default;
        "utf8-string".revision = (((hackage."utf8-string")."1.0.2").revisions).default;
        "process".revision = (((hackage."process")."1.6.13.2").revisions).default;
        "parser-combinators".revision = (((hackage."parser-combinators")."1.3.0").revisions).default;
        "parser-combinators".flags.dev = false;
        "semigroupoids".revision = (((hackage."semigroupoids")."5.3.6").revisions).default;
        "semigroupoids".flags.distributive = true;
        "semigroupoids".flags.tagged = true;
        "semigroupoids".flags.containers = true;
        "semigroupoids".flags.contravariant = true;
        "semigroupoids".flags.unordered-containers = true;
        "semigroupoids".flags.comonad = true;
        "data-default-class".revision = (((hackage."data-default-class")."0.1.2.0").revisions).default;
        "th-abstraction".revision = (((hackage."th-abstraction")."0.4.3.0").revisions).default;
        "regex-base".revision = (((hackage."regex-base")."0.94.0.2").revisions).default;
        "transformers-base".revision = (((hackage."transformers-base")."0.4.6").revisions).default;
        "transformers-base".flags.orphaninstances = true;
        "vector".revision = (((hackage."vector")."0.12.3.1").revisions).default;
        "vector".flags.unsafechecks = false;
        "vector".flags.internalchecks = false;
        "vector".flags.wall = false;
        "vector".flags.boundschecks = true;
        "network".revision = (((hackage."network")."3.1.2.5").revisions).default;
        "network".flags.devel = false;
        "uri-encode".revision = (((hackage."uri-encode")."1.5.0.7").revisions).default;
        "uri-encode".flags.tools = false;
        "uri-encode".flags.network-uri = true;
        "invariant".revision = (((hackage."invariant")."0.5.5").revisions).default;
        "hsc2hs".revision = (((hackage."hsc2hs")."0.68.8").revisions).default;
        "hsc2hs".flags.in-ghc-tree = false;
        "asn1-parse".revision = (((hackage."asn1-parse")."0.9.5").revisions).default;
        "cryptonite".revision = (((hackage."cryptonite")."0.29").revisions).default;
        "cryptonite".flags.check_alignment = false;
        "cryptonite".flags.support_sse = false;
        "cryptonite".flags.old_toolchain_inliner = false;
        "cryptonite".flags.integer-gmp = true;
        "cryptonite".flags.use_target_attributes = true;
        "cryptonite".flags.support_deepseq = true;
        "cryptonite".flags.support_pclmuldq = false;
        "cryptonite".flags.support_aesni = true;
        "cryptonite".flags.support_rdrand = true;
        "parallel".revision = (((hackage."parallel")."3.2.2.0").revisions).default;
        "socks".revision = (((hackage."socks")."0.6.1").revisions).default;
        "lens".revision = (((hackage."lens")."4.19.2").revisions).default;
        "lens".flags.safe = false;
        "lens".flags.j = false;
        "lens".flags.test-templates = true;
        "lens".flags.benchmark-uniplate = false;
        "lens".flags.trustworthy = true;
        "lens".flags.old-inline-pragmas = false;
        "lens".flags.test-hunit = true;
        "lens".flags.test-doctests = true;
        "lens".flags.dump-splices = false;
        "lens".flags.inlining = true;
        "lens".flags.test-properties = true;
        "x509".revision = (((hackage."x509")."1.7.5").revisions).default;
        "prettyprinter-ansi-terminal".revision = (((hackage."prettyprinter-ansi-terminal")."1.1.3").revisions).default;
        "profunctors".revision = (((hackage."profunctors")."5.6.2").revisions).default;
        "http-types".revision = (((hackage."http-types")."0.12.3").revisions).default;
        "comonad".revision = (((hackage."comonad")."5.0.8").revisions).default;
        "comonad".flags.distributive = true;
        "comonad".flags.containers = true;
        "comonad".flags.indexed-traversable = true;
        "temporary".revision = (((hackage."temporary")."1.3").revisions).default;
        "these".revision = (((hackage."these")."1.1.1.1").revisions).default;
        "these".flags.assoc = true;
        "time-compat".revision = (((hackage."time-compat")."1.9.6.1").revisions).default;
        "time-compat".flags.old-locale = false;
        "contravariant".revision = (((hackage."contravariant")."1.5.5").revisions).default;
        "contravariant".flags.tagged = true;
        "contravariant".flags.semigroups = true;
        "contravariant".flags.statevar = true;
        "x509-system".revision = (((hackage."x509-system")."1.6.6").revisions).default;
        "generic-lens-core".revision = (((hackage."generic-lens-core")."2.0.0.0").revisions).default;
        "base-orphans".revision = (((hackage."base-orphans")."0.8.6").revisions).default;
        "appar".revision = (((hackage."appar")."0.1.8").revisions).default;
        "ghc".revision = (((hackage."ghc")."8.10.7").revisions).default;
        "either".revision = (((hackage."either")."5.0.1.1").revisions).default;
        "asn1-types".revision = (((hackage."asn1-types")."0.3.4").revisions).default;
        "base-compat".revision = (((hackage."base-compat")."0.12.1").revisions).default;
        "base-compat-batteries".revision = (((hackage."base-compat-batteries")."0.12.1").revisions).default;
        "pretty-simple".revision = (((hackage."pretty-simple")."4.0.0.0").revisions).default;
        "pretty-simple".flags.buildexe = false;
        "pretty-simple".flags.buildexample = false;
        "assoc".revision = (((hackage."assoc")."1.0.2").revisions).default;
        "exceptions".revision = (((hackage."exceptions")."0.10.4").revisions).default;
        "th-lift-instances".revision = (((hackage."th-lift-instances")."0.1.19").revisions).default;
        "Cabal".revision = (((hackage."Cabal")."3.2.1.0").revisions).default;
        "data-fix".revision = (((hackage."data-fix")."0.3.2").revisions).default;
        "primitive".revision = (((hackage."primitive")."0.7.3.0").revisions).default;
        "tls".revision = (((hackage."tls")."1.5.6").revisions).default;
        "tls".flags.network = true;
        "tls".flags.hans = false;
        "tls".flags.compat = true;
        "hpc".revision = (((hackage."hpc")."0.6.1.0").revisions).default;
        "directory".revision = (((hackage."directory")."1.3.6.0").revisions).default;
        "dhall".revision = (((hackage."dhall")."1.37.1").revisions).default;
        "dhall".flags.with-http = true;
        "dhall".flags.use-http-client-tls = true;
        "dhall".flags.cross = false;
        "http-client-tls".revision = (((hackage."http-client-tls")."0.3.5.3").revisions).default;
        "half".revision = (((hackage."half")."0.3.1").revisions).default;
        "optparse-applicative".revision = (((hackage."optparse-applicative")."0.16.1.0").revisions).default;
        "optparse-applicative".flags.process = true;
        "text-manipulate".revision = (((hackage."text-manipulate")."0.3.0.0").revisions).default;
        "basement".revision = (((hackage."basement")."0.0.12").revisions).default;
        "prettyprinter".revision = (((hackage."prettyprinter")."1.7.1").revisions).default;
        "prettyprinter".flags.buildreadme = false;
        "prettyprinter".flags.text = true;
        "serialise".revision = (((hackage."serialise")."0.2.4.0").revisions).default;
        "serialise".flags.newtime15 = true;
        "mtl".revision = (((hackage."mtl")."2.2.2").revisions).default;
        "transformers".revision = (((hackage."transformers")."0.5.6.2").revisions).default;
        "rts".revision = (((hackage."rts")."1.0.1").revisions).default;
        "generic-lens".revision = (((hackage."generic-lens")."2.0.0.0").revisions).default;
        "OneTuple".revision = (((hackage."OneTuple")."0.3.1").revisions).default;
        "parsec".revision = (((hackage."parsec")."3.1.14.0").revisions).default;
        "mime-types".revision = (((hackage."mime-types")."0.1.0.9").revisions).default;
        "reflection".revision = (((hackage."reflection")."2.1.6").revisions).default;
        "reflection".flags.template-haskell = true;
        "reflection".flags.slow = false;
        "template-haskell".revision = (((hackage."template-haskell")."2.16.0.0").revisions).default;
        "atomic-write".revision = (((hackage."atomic-write")."0.2.0.7").revisions).default;
        "bytestring".revision = (((hackage."bytestring")."0.10.12.0").revisions).default;
        "aeson-pretty".revision = (((hackage."aeson-pretty")."0.8.9").revisions).default;
        "aeson-pretty".flags.lib-only = false;
        "aeson".revision = (((hackage."aeson")."1.5.6.0").revisions).default;
        "aeson".flags.cffi = false;
        "aeson".flags.fast = false;
        "aeson".flags.bytestring-builder = false;
        "aeson".flags.developer = false;
        "ghci".revision = (((hackage."ghci")."8.10.7").revisions).default;
        "pem".revision = (((hackage."pem")."0.2.4").revisions).default;
        "zlib".revision = (((hackage."zlib")."0.6.2.3").revisions).default;
        "zlib".flags.non-blocking-ffi = false;
        "zlib".flags.pkg-config = false;
        "zlib".flags.bundled-c-zlib = false;
        "strict".revision = (((hackage."strict")."0.4.0.1").revisions).default;
        "strict".flags.assoc = true;
        "dotgen".revision = (((hackage."dotgen")."0.4.3").revisions).default;
        "dotgen".flags.devel = false;
        "th-compat".revision = (((hackage."th-compat")."0.1.3").revisions).default;
        "tagged".revision = (((hackage."tagged")."0.8.6.1").revisions).default;
        "tagged".flags.deepseq = true;
        "tagged".flags.transformers = true;
        "deepseq".revision = (((hackage."deepseq")."1.4.4.0").revisions).default;
        "splitmix".revision = (((hackage."splitmix")."0.1.0.4").revisions).default;
        "splitmix".flags.optimised-mixer = false;
        "unix".revision = (((hackage."unix")."2.7.2.2").revisions).default;
        "attoparsec".revision = (((hackage."attoparsec")."0.14.3").revisions).default;
        "attoparsec".flags.developer = false;
        "algebraic-graphs".revision = (((hackage."algebraic-graphs")."0.5").revisions).default;
        "filepath".revision = (((hackage."filepath")."1.4.2.1").revisions).default;
        "ansi-terminal".revision = (((hackage."ansi-terminal")."0.11.1").revisions).default;
        "ansi-terminal".flags.example = false;
        "th-lift".revision = (((hackage."th-lift")."0.8.2").revisions).default;
        "memory".revision = (((hackage."memory")."0.15.0").revisions).default;
        "memory".flags.support_basement = true;
        "memory".flags.support_bytestring = true;
        "memory".flags.support_deepseq = true;
        "memory".flags.support_foundation = true;
        "blaze-builder".revision = (((hackage."blaze-builder")."0.4.2.2").revisions).default;
        "stm".revision = (((hackage."stm")."2.5.0.1").revisions).default;
        "cborg-json".revision = (((hackage."cborg-json")."0.2.3.0").revisions).default;
        "connection".revision = (((hackage."connection")."0.3.1").revisions).default;
        "void".revision = (((hackage."void")."0.7.3").revisions).default;
        "void".flags.safe = false;
        "cmdargs".revision = (((hackage."cmdargs")."0.10.21").revisions).default;
        "cmdargs".flags.quotation = true;
        "cmdargs".flags.testprog = false;
        "free".revision = (((hackage."free")."5.1.7").revisions).default;
        "integer-gmp".revision = (((hackage."integer-gmp")."1.0.3.0").revisions).default;
        "hashable".revision = (((hackage."hashable")."1.3.5.0").revisions).default;
        "hashable".flags.integer-gmp = true;
        "hashable".flags.random-initial-seed = false;
        "transformers-compat".revision = (((hackage."transformers-compat")."0.6.6").revisions).default;
        "transformers-compat".flags.two = false;
        "transformers-compat".flags.mtl = true;
        "transformers-compat".flags.five-three = true;
        "transformers-compat".flags.three = false;
        "transformers-compat".flags.four = false;
        "transformers-compat".flags.five = false;
        "transformers-compat".flags.generic-deriving = true;
        "semigroups".revision = (((hackage."semigroups")."0.20").revisions).default;
        "semigroups".flags.bytestring = true;
        "semigroups".flags.deepseq = true;
        "semigroups".flags.template-haskell = true;
        "semigroups".flags.binary = true;
        "semigroups".flags.bytestring-builder = false;
        "semigroups".flags.tagged = true;
        "semigroups".flags.containers = true;
        "semigroups".flags.transformers = true;
        "semigroups".flags.unordered-containers = true;
        "semigroups".flags.text = true;
        "semigroups".flags.hashable = true;
        "terminfo".revision = (((hackage."terminfo")."0.4.1.4").revisions).default;
        "x509-store".revision = (((hackage."x509-store")."1.6.7").revisions).default;
        "iproute".revision = (((hackage."iproute")."1.7.12").revisions).default;
        "ansi-wl-pprint".revision = (((hackage."ansi-wl-pprint")."0.6.9").revisions).default;
        "ansi-wl-pprint".flags.example = false;
        "scientific".revision = (((hackage."scientific")."0.3.7.0").revisions).default;
        "scientific".flags.bytestring-builder = false;
        "scientific".flags.integer-simple = false;
        "ghc-heap".revision = (((hackage."ghc-heap")."8.10.7").revisions).default;
        "binary".revision = (((hackage."binary")."0.8.8.0").revisions).default;
        "uuid-types".revision = (((hackage."uuid-types")."1.0.5").revisions).default;
        "http-client".revision = (((hackage."http-client")."0.7.9").revisions).default;
        "http-client".flags.network-uri = true;
        "containers".revision = (((hackage."containers")."0.6.5.1").revisions).default;
        "indexed-profunctors".revision = (((hackage."indexed-profunctors")."0.1.1").revisions).default;
        "unix-compat".revision = (((hackage."unix-compat")."0.5.3").revisions).default;
        "unix-compat".flags.old-time = false;
        "case-insensitive".revision = (((hackage."case-insensitive")."1.2.1.0").revisions).default;
        "colour".revision = (((hackage."colour")."2.3.6").revisions).default;
        "StateVar".revision = (((hackage."StateVar")."1.2.2").revisions).default;
        };
      compiler = {
        version = "8.10.7";
        nix-name = "ghc8107";
        packages = {
          "ghc-boot" = "8.10.7";
          "ghc-boot-th" = "8.10.7";
          "ghc-prim" = "0.6.1";
          "pretty" = "1.1.3.6";
          "haskeline" = "0.8.2";
          "text" = "1.2.4.1";
          "base" = "4.14.3.0";
          "time" = "1.9.3";
          "array" = "0.5.4.0";
          "process" = "1.6.13.2";
          "ghc" = "8.10.7";
          "exceptions" = "0.10.4";
          "Cabal" = "3.2.1.0";
          "hpc" = "0.6.1.0";
          "directory" = "1.3.6.0";
          "mtl" = "2.2.2";
          "transformers" = "0.5.6.2";
          "rts" = "1.0.1";
          "parsec" = "3.1.14.0";
          "template-haskell" = "2.16.0.0";
          "bytestring" = "0.10.12.0";
          "ghci" = "8.10.7";
          "deepseq" = "1.4.4.0";
          "unix" = "2.7.2.2";
          "filepath" = "1.4.2.1";
          "stm" = "2.5.0.1";
          "integer-gmp" = "1.0.3.0";
          "terminfo" = "0.4.1.4";
          "ghc-heap" = "8.10.7";
          "binary" = "0.8.8.0";
          "containers" = "0.6.5.1";
          };
        };
      };
  extras = hackage:
    { packages = { weeder = ./.plan.nix/weeder.nix; }; };
  modules = [
    ({ lib, ... }:
      { packages = { "weeder" = { flags = {}; }; }; })
    ({ lib, ... }:
      {
        packages = {
          "invariant".components.library.planned = lib.mkOverride 900 true;
          "transformers-base".components.library.planned = lib.mkOverride 900 true;
          "blaze-builder".components.library.planned = lib.mkOverride 900 true;
          "http-client-tls".components.library.planned = lib.mkOverride 900 true;
          "base-orphans".components.library.planned = lib.mkOverride 900 true;
          "asn1-types".components.library.planned = lib.mkOverride 900 true;
          "either".components.library.planned = lib.mkOverride 900 true;
          "ansi-terminal".components.library.planned = lib.mkOverride 900 true;
          "text-manipulate".components.library.planned = lib.mkOverride 900 true;
          "repline".components.library.planned = lib.mkOverride 900 true;
          "weeder".components.exes."weeder".planned = lib.mkOverride 900 true;
          "pretty-simple".components.setup.planned = lib.mkOverride 900 true;
          "megaparsec".components.library.planned = lib.mkOverride 900 true;
          "indexed-traversable".components.library.planned = lib.mkOverride 900 true;
          "network-uri".components.library.planned = lib.mkOverride 900 true;
          "weeder".components.library.planned = lib.mkOverride 900 true;
          "cookie".components.library.planned = lib.mkOverride 900 true;
          "cereal".components.library.planned = lib.mkOverride 900 true;
          "socks".components.library.planned = lib.mkOverride 900 true;
          "these".components.library.planned = lib.mkOverride 900 true;
          "filepath".components.library.planned = lib.mkOverride 900 true;
          "contravariant".components.library.planned = lib.mkOverride 900 true;
          "appar".components.library.planned = lib.mkOverride 900 true;
          "pem".components.library.planned = lib.mkOverride 900 true;
          "memory".components.library.planned = lib.mkOverride 900 true;
          "base-compat-batteries".components.library.planned = lib.mkOverride 900 true;
          "pretty".components.library.planned = lib.mkOverride 900 true;
          "utf8-string".components.library.planned = lib.mkOverride 900 true;
          "assoc".components.library.planned = lib.mkOverride 900 true;
          "process".components.library.planned = lib.mkOverride 900 true;
          "Cabal".components.library.planned = lib.mkOverride 900 true;
          "distributive".components.library.planned = lib.mkOverride 900 true;
          "pretty-simple".components.library.planned = lib.mkOverride 900 true;
          "dhall".components.library.planned = lib.mkOverride 900 true;
          "reflection".components.library.planned = lib.mkOverride 900 true;
          "dotgen".components.library.planned = lib.mkOverride 900 true;
          "prettyprinter".components.library.planned = lib.mkOverride 900 true;
          "zlib".components.library.planned = lib.mkOverride 900 true;
          "bytestring".components.library.planned = lib.mkOverride 900 true;
          "template-haskell".components.library.planned = lib.mkOverride 900 true;
          "byteorder".components.library.planned = lib.mkOverride 900 true;
          "stm".components.library.planned = lib.mkOverride 900 true;
          "aeson-pretty".components.library.planned = lib.mkOverride 900 true;
          "th-lift".components.library.planned = lib.mkOverride 900 true;
          "atomic-write".components.library.planned = lib.mkOverride 900 true;
          "strict".components.library.planned = lib.mkOverride 900 true;
          "ghci".components.library.planned = lib.mkOverride 900 true;
          "cborg".components.library.planned = lib.mkOverride 900 true;
          "comonad".components.library.planned = lib.mkOverride 900 true;
          "data-fix".components.library.planned = lib.mkOverride 900 true;
          "serialise".components.library.planned = lib.mkOverride 900 true;
          "prettyprinter-ansi-terminal".components.library.planned = lib.mkOverride 900 true;
          "profunctors".components.library.planned = lib.mkOverride 900 true;
          "asn1-encoding".components.library.planned = lib.mkOverride 900 true;
          "lens".components.setup.planned = lib.mkOverride 900 true;
          "exceptions".components.library.planned = lib.mkOverride 900 true;
          "http-client".components.library.planned = lib.mkOverride 900 true;
          "call-stack".components.library.planned = lib.mkOverride 900 true;
          "async".components.library.planned = lib.mkOverride 900 true;
          "dlist".components.library.planned = lib.mkOverride 900 true;
          "ghc-prim".components.library.planned = lib.mkOverride 900 true;
          "mmorph".components.library.planned = lib.mkOverride 900 true;
          "cabal-doctest".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot".components.library.planned = lib.mkOverride 900 true;
          "iproute".components.library.planned = lib.mkOverride 900 true;
          "lens".components.library.planned = lib.mkOverride 900 true;
          "hpc".components.library.planned = lib.mkOverride 900 true;
          "array".components.library.planned = lib.mkOverride 900 true;
          "th-compat".components.library.planned = lib.mkOverride 900 true;
          "http-types".components.library.planned = lib.mkOverride 900 true;
          "x509".components.library.planned = lib.mkOverride 900 true;
          "tls".components.library.planned = lib.mkOverride 900 true;
          "scientific".components.library.planned = lib.mkOverride 900 true;
          "x509-validation".components.library.planned = lib.mkOverride 900 true;
          "semigroupoids".components.library.planned = lib.mkOverride 900 true;
          "binary".components.library.planned = lib.mkOverride 900 true;
          "charset".components.library.planned = lib.mkOverride 900 true;
          "ghc-heap".components.library.planned = lib.mkOverride 900 true;
          "ghc-boot-th".components.library.planned = lib.mkOverride 900 true;
          "ansi-wl-pprint".components.library.planned = lib.mkOverride 900 true;
          "uuid-types".components.library.planned = lib.mkOverride 900 true;
          "tagged".components.library.planned = lib.mkOverride 900 true;
          "splitmix".components.library.planned = lib.mkOverride 900 true;
          "mtl".components.library.planned = lib.mkOverride 900 true;
          "rts".components.library.planned = lib.mkOverride 900 true;
          "algebraic-graphs".components.library.planned = lib.mkOverride 900 true;
          "attoparsec".components.library.planned = lib.mkOverride 900 true;
          "temporary".components.library.planned = lib.mkOverride 900 true;
          "unix".components.library.planned = lib.mkOverride 900 true;
          "hsc2hs".components.exes."hsc2hs".planned = lib.mkOverride 900 true;
          "cryptonite".components.library.planned = lib.mkOverride 900 true;
          "parser-combinators".components.library.planned = lib.mkOverride 900 true;
          "parsers".components.library.planned = lib.mkOverride 900 true;
          "regex-base".components.library.planned = lib.mkOverride 900 true;
          "uri-encode".components.library.planned = lib.mkOverride 900 true;
          "adjunctions".components.library.planned = lib.mkOverride 900 true;
          "data-default-class".components.library.planned = lib.mkOverride 900 true;
          "th-abstraction".components.library.planned = lib.mkOverride 900 true;
          "asn1-parse".components.library.planned = lib.mkOverride 900 true;
          "generic-lens-core".components.library.planned = lib.mkOverride 900 true;
          "parallel".components.library.planned = lib.mkOverride 900 true;
          "vector".components.library.planned = lib.mkOverride 900 true;
          "transformers".components.library.planned = lib.mkOverride 900 true;
          "parsec".components.library.planned = lib.mkOverride 900 true;
          "deepseq".components.library.planned = lib.mkOverride 900 true;
          "OneTuple".components.library.planned = lib.mkOverride 900 true;
          "directory".components.library.planned = lib.mkOverride 900 true;
          "primitive".components.library.planned = lib.mkOverride 900 true;
          "dhall".components.exes."dhall".planned = lib.mkOverride 900 true;
          "mime-types".components.library.planned = lib.mkOverride 900 true;
          "generic-lens".components.library.planned = lib.mkOverride 900 true;
          "th-lift-instances".components.library.planned = lib.mkOverride 900 true;
          "bifunctors".components.library.planned = lib.mkOverride 900 true;
          "Diff".components.library.planned = lib.mkOverride 900 true;
          "lens-family-core".components.library.planned = lib.mkOverride 900 true;
          "kan-extensions".components.library.planned = lib.mkOverride 900 true;
          "unordered-containers".components.library.planned = lib.mkOverride 900 true;
          "regex-tdfa".components.library.planned = lib.mkOverride 900 true;
          "random".components.library.planned = lib.mkOverride 900 true;
          "text".components.library.planned = lib.mkOverride 900 true;
          "base".components.library.planned = lib.mkOverride 900 true;
          "network".components.library.planned = lib.mkOverride 900 true;
          "time".components.library.planned = lib.mkOverride 900 true;
          "integer-logarithms".components.library.planned = lib.mkOverride 900 true;
          "transformers-compat".components.library.planned = lib.mkOverride 900 true;
          "integer-gmp".components.library.planned = lib.mkOverride 900 true;
          "streaming-commons".components.library.planned = lib.mkOverride 900 true;
          "cmdargs".components.library.planned = lib.mkOverride 900 true;
          "StateVar".components.library.planned = lib.mkOverride 900 true;
          "case-insensitive".components.library.planned = lib.mkOverride 900 true;
          "colour".components.library.planned = lib.mkOverride 900 true;
          "aeson-pretty".components.exes."aeson-pretty".planned = lib.mkOverride 900 true;
          "containers".components.library.planned = lib.mkOverride 900 true;
          "aeson".components.library.planned = lib.mkOverride 900 true;
          "basement".components.library.planned = lib.mkOverride 900 true;
          "hourglass".components.library.planned = lib.mkOverride 900 true;
          "haskeline".components.library.planned = lib.mkOverride 900 true;
          "x509-system".components.library.planned = lib.mkOverride 900 true;
          "ghc".components.library.planned = lib.mkOverride 900 true;
          "base-compat".components.library.planned = lib.mkOverride 900 true;
          "half".components.library.planned = lib.mkOverride 900 true;
          "time-compat".components.library.planned = lib.mkOverride 900 true;
          "optparse-applicative".components.library.planned = lib.mkOverride 900 true;
          "cborg-json".components.library.planned = lib.mkOverride 900 true;
          "free".components.library.planned = lib.mkOverride 900 true;
          "base64-bytestring".components.library.planned = lib.mkOverride 900 true;
          "unix-compat".components.library.planned = lib.mkOverride 900 true;
          "hashable".components.library.planned = lib.mkOverride 900 true;
          "connection".components.library.planned = lib.mkOverride 900 true;
          "x509-store".components.library.planned = lib.mkOverride 900 true;
          "void".components.library.planned = lib.mkOverride 900 true;
          "indexed-profunctors".components.library.planned = lib.mkOverride 900 true;
          "semigroups".components.library.planned = lib.mkOverride 900 true;
          "terminfo".components.library.planned = lib.mkOverride 900 true;
          };
        })
    ];
  }