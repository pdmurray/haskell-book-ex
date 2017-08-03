module Exercises125 where

import Data.Maybe

-- Determine the Kinds

-- 1.  id :: a -> a    a has kind *
-- 2.  r :: a -> f a   a has kind *, f a has kind * -> *

-- String Processing

-- 1. 
-- example GHCi session above the functions

-- >>> notThe "the"
-- Nothing
-- >>> notThe "blahtheblah"
-- Just "blahtheblah"
-- >>> notThe "woot"
-- Just "woot"
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe x = Just x

theToA :: Maybe String -> String
theToA Nothing = "a"
theToA (Just x) = x

-- >>> replaceThe "the cow loves us" -- "a cow loves us"
replaceThe :: String -> String
replaceThe x = unwords $ map (theToA . notThe) $ words x


-- 2.
vowelInitial :: String -> Maybe String
vowelInitial x
    | head x `elem` "aeiou" = Nothing
    | otherwise = Just x

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel = undefined


-- 3.
isVowel :: Char -> Maybe Char
isVowel x
    | x `elem` "aeiou" = Just x
    | otherwise = Nothing

countVowels :: String -> Integer 
countVowels = toInteger . length . mapMaybe isVowel
