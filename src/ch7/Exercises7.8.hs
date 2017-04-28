module Exercises78 where

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
    | y >= 0.7  = 'C'
    | y >= 0.9  = 'A'
    | y >= 0.8  = 'B'
    | y >= 0.59 = 'D'
    | y <  0.59 = 'F'
    where y = x / 100

-- 1.  Every grade will end up being "f"
-- 2.  Passing '90' when reordering 'C' to the top returns a 'C'
-- 3.  b) True when xs is a palindrome
pal xs
    | xs == reverse xs = True 
    | otherwise = False

-- 4. Lists with instance Eq
-- 5. Eq a => [a] -> Bool
-- 6. c
numbers x
    | x < 0  = -1
    | x == 0 = 0
    | x > 0  = 1
-- 7. (Ord a, Num a) => a
-- 8. (Ord a, Num a, Num t) => a -> t