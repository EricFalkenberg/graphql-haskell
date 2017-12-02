module Main where

import Lib
import Control.Monad
import Happstack.Server (nullConf, simpleHTTP, toResponse, ok, dir, seeOther)

main :: IO ()
main = simpleHTTP nullConf $ msum 
    [ dir "hello" $ ok "Hello, World!",
      dir "bye"   $ ok "Goodbye, World!",
      seeOther "/hello" "/hello" 
    ]

