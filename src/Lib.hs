module Lib
    ( someFunc
    ) where

someFunc :: String -> IO ()
someFunc x = putStrLn ("Hello, " ++ x ++ "!")
