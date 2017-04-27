module Exercises73 where

-- 1. all are equivalent
-- 2. d), Num a => a -> a -> a
-- 3.
-- a) 
addOneIfOdd n = case odd n of
    True -> f n
    False -> n
    where f = \n -> n + 1
--b)
-- addFive x y = (if x > y then y else x) + 5
addFive = \x -> \y -> (if x > y then y else x) + 5
-- c)
-- mflip f = \x -> \y -> f y x
mflip f x y = f y x