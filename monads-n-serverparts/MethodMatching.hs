module Main where

import Control.Monad  (msum)
import Happstack.Server ( Method(GET, POST), dir, method
                        , nullConf, ok, simpleHTTP, seeOther
                        )
main :: IO ()
main = simpleHTTP nullConf $ msum
       [ do dir "foo" $ do method GET
                           ok $ "You did a GET request on /foo"
       , do method GET
            ok $ "you did a GET request. \n"
       , do method POST
            ok $ "you did a POST request. \n"
       ]
