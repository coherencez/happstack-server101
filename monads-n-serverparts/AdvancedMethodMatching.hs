module Main where

import Control.Monad     (msum)
import Happstack.Server  ( Method(GET, HEAD), dir, methodM
                         , nullConf, ok, simpleHTTP
                         )

main :: IO ()
main = simpleHTTP nullConf $ msum
       [ do methodM [GET, HEAD]
            ok $ "Hello, World\n"
       ]
