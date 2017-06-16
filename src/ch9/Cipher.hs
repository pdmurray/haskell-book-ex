module Cipher where

import Data.Char

-- Loops Int values through a specified range
modRange :: Int -> Int -> Int -> Int
modRange min max val = mod (val - min) (max - min + 1) + min

-- 'modRange' for lowercase alphabetic characters
alphaLower :: Int -> Int
alphaLower = modRange 97 122

-- caesar cipher for single Char
cipher :: Int -> Char -> Char
cipher x y 
    | not $ isAlpha y = y
    | otherwise = chr . alphaLower $ x + ord y

-- Caesar cipher
caesar :: Int -> [Char] -> [Char]
caesar = map . cipher

-- Caesar cipher decryption
unCaesar :: Int -> [Char] -> [Char]
unCaesar = map . cipher . negate