module Main where
  import Control.Monad
  import Happstack.Server (nullConf, simpleHTTP, ok, dir, seeOther)

  main :: IO ()
  main = simpleHTTP nullConf $
    msum [ dir "hello"   $ dir "world" $ ok "Hello, World!"
         , dir "goodbye" $ dir "moon"  $ ok "Goodbye, Moon!"
         , seeOther "/hello/world" "/hello/world"
         ]
