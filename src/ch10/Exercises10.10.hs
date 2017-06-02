module Exercises1010 where

stops  = "pbtdkg"
vowels = "aeiou"

{-
1.
To decompose this,
The strings each need to be broken down into individual lists.
The stop-vowel-stop combinations must be combvined into 3-tuples.
It should enumerate all the possible combinations and generate the words.

The simplest way to do this is using a list comprehension.
-}
-- a)
stopsVowelsCombinations a b = [ (x, y, z) | x <- a, y <- b, z <- a ]

-- b)
stopsVowelsCombinationsP a b = [ (x, y, z) | x <- a, y <- b, z <- a, x == 'p' ]

-- c) the function from (a) doesn't need to change, actually
nouns = ["Dog", "Cat", "Elephant", "Zebra", "Monkey"]
verbs = ["chases", "claws", "bites", "eats"]

nounVerbCombinations a b = [ (x, y, z) | x <- a, y <- b, z <- a ]


-- 2.  This function calculates the average length of the words in a string.
--     It's Type should be String -> Int
seekritFunc x =
    div (sum (map length (words x)))
        (length (words x))

-- 3.
seekritFunc' :: (Fractional a) => String -> a
seekritFunc' x =
    (/) (realToFrac (sum (map length (words x))))
        (realToFrac (length (words x)))



-- Rewriting Functions using Folds

-- 1. 
myOr :: [Bool] -> Bool
myOr = foldr (||) False


-- 2.
myAny :: (a -> Bool) -> [a] -> Bool 
myAny f = foldr (\a b -> f a || b) False