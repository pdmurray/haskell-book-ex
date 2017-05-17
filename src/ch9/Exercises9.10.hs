module Exercises99 where

-- 1. 
filterMult3 = filter (\x -> x `mod` 3 == 0)

-- 2. 
lenMult3 = length . filterMult3

-- 3. 
wordsFilter = filter (\x -> x /= "a" && x /= "the" && x /= "an") . words
wordsFilter2 = filter (\x -> not (elem x ["a", "the", "an"])) . words