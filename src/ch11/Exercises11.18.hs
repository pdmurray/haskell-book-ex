module Exercises1118 where

import Data.Char

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