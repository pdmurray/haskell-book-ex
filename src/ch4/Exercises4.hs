-- Exercises4.hs
module Exercises4 where

awesome :: [[Char]]
alsoAwesome :: [[Char]]
allAwesome :: [[[Char]]]

awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]


-- 1.
-- length :: [a] -> Integer
-- it takes one argument, a list
-- it returns an Integer

-- 2. 
-- a) 5
-- b) 3
-- c) 2
-- d) 5

-- 3.  6 / length [1, 2, 3] will return an error.
--     length returns an 'Int' but division needs both values to be Fractional

-- 4.  div 6 (length [1, 2, 3])

-- 5.  Bool.  We would expect "True"

-- 6.  Bool, "False"

-- 7.  yes, True; comparing Int == Int returns Bool
-- no, lists can only contain the same type
-- yes, 5
-- yes, False; True && False = False
-- no; 9 is not Bool

-- 8.

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

-- 9.

myAbs :: Integer -> Integer
myAbs x = if x < 0
          then
            x * (-1)
          else
            x

-- 10.

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = ((snd x, snd y), (fst x, fst y))


-- Correcting Syntax

-- 1.  
-- x = (+)
-- f xs = w `x` 1
--     where w = length xs

-- 2. (\x -> x)

-- 3. (\ (x:xs) -> x) [1, 2, 3]

-- 4. f (a, b) = a


-- Match function names to types

-- 1. c
-- 2. b
-- 3. a
-- 4. d