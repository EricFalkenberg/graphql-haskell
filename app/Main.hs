module Main where

import Lib
import Control.Monad (msum)
import Happstack.Server (Method(GET, POST)
                        , method
                        , nullConf
                        , simpleHTTP
                        , toResponse
                        , ok
                        , dir)

main :: IO ()
main = simpleHTTP nullConf $ msum 
    [ do method GET
         ok $ "You did a GET request.\n"
    , do method POST
         ok $ "You did a POST request.\n"
    ]

