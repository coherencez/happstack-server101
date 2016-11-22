module Main where
  import Control.Monad
  import Happstack.Server (nullConf, simpleHTTP, ok, dir)
-- into to "routes"
-- mzero is false so will never be hit
-- Hello World does get hit and as such
-- the last route never gets hit
  main :: IO ()
  main = simpleHTTP nullConf $ msum [ mzero
                                    , ok "Hello World!"
                                    , ok "Unreachable ServerPartT"
                                    ]
