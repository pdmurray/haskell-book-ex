module Exercises912 where

import Data.Char

-- Data.Char problems

-- 1. isUpper :: Char -> Bool
--    toUpper :: Char -> Char

-- 2. 
removeLower :: [Char] -> [Char]
removeLower = filter isUpper

-- 3. 
capitalize :: [Char] -> [Char]
capitalize (x:xs) = (toUpper x):xs
capitalize _ = []

-- 4. 
allCaps :: [Char] -> [Char]
allCaps [] = []
allCaps (x:xs) = toUpper x : allCaps xs


-- 5. 
firstLetterCap :: [Char] -> Maybe Char
firstLetterCap xs 
    | length xs >= 1 = Just (toUpper $ head xs)
    | otherwise = Nothing

-- 6.
firstLetterCapComposed :: [Char] -> Maybe Char
firstLetterCapComposed xs 
    | length xs >= 1 = Just . toUpper . head $ xs
    | otherwise = Nothing

firstLetterCapPF :: [Char] -> Char
firstLetterCapPF = toUpper . head


-- Ciphers - See Ciphers.hs