module Exercises96 where

-- 1.
-- recursively break up the string and build up the list
-- recursion stops when the input is empty.  empty string returns empty list

myWords :: String -> [String]
myWords "" = []
myWords input = beg : end
    where
        notSpace = \x -> x /= ' '
        isSpace = \x -> x == ' '
        beg = takeWhile notSpace input
        end = myWords . dropWhile isSpace . dropWhile notSpace $ input

-- 2, 3.
-- module PoemLines