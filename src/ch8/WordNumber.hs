module WordNumber where

import Data.List (intersperse)

digitToWord :: Int -> String
digitToWord n
    | n == 0 = "zero"
    | n == 1 = "one"
    | n == 2 = "two"
    | n == 3 = "three"
    | n == 4 = "four"
    | n == 5 = "five"
    | n == 6 = "six"
    | n == 7 = "seven"
    | n == 8 = "eight"
    | n == 9 = "nine"
    | otherwise = ""

digits :: Int -> [Int]
digits n = go n []
    where go a xs
            | a == 0 = a:xs
            | otherwise = go (a `div` 10) ((a `mod` 10):xs)

wordNumber :: Int -> String 
wordNumber = concat . intersperse "-" . map digitToWord . digits

