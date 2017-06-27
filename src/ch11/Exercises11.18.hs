module Exercises1118 where

import Data.Char
import Data.List (intersperse, intercalate)
-- Chapter Exercises


-- Multiple Choice
data Weekday =
      Monday
    | Tuesday
    | Wednesday
    | Thursday
    | Friday

-- 1.  a
-- 2.  c
-- 3.  b
-- 4.  c


-- Ciphers



-- As-patterns

-- 1. 
isSubsequenceOf :: (Eq a) => [a] -> [a] -> Bool
isSubsequenceOf [] [] = True
isSubsequenceOf [] _  = True
isSubsequenceOf _ []  = False
isSubsequenceOf xz@(x:xs) (y:ys)
  | x == y = isSubsequenceOf xs ys
  | otherwise = isSubsequenceOf xz ys


--2.
{-
Prelude> capitalizeWords "hello world"
     [("hello", "Hello"), ("world", "World")]
-}
splitter :: (Eq a) => a -> [a] -> [[a]]
splitter _ [] = []
splitter sep input = beg : end
    where
        notSep = \x -> x /= sep
        isSep = \x -> x == sep
        beg = takeWhile notSep input
        end = splitter sep . dropWhile isSep . dropWhile notSep $ input

splitWords :: String -> [String]
splitWords = splitter ' '

capitalizeWords :: String -> [(String, String)]
capitalizeWords x = map capitalizeWord $ splitWords x

capitalizeWord :: String -> (String, String)
capitalizeWord xz@(x:xs) = (xz, toUpper x : xs)


-- Language Exercises

-- 1.
{-
Prelude> capitalizeWord "Titter"
"Titter"
Prelude> capitalizeWord "titter"
"Titter"
-}
capitalizeWord' :: String -> String
capitalizeWord' [] = []
capitalizeWord' (x:xs) 
  | isAlpha x = toUpper x : xs
  | otherwise = x : capitalizeWord' xs


-- 2.
splitPeriod :: String -> [String]
splitPeriod = splitter '.'


capitalizeParagraph :: String -> String
capitalizeParagraph x = intercalate "." $ map capitalizeWord' $ splitPeriod x