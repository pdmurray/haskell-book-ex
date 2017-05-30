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