module Exercises109 where

fibs :: Num a => [a]
fibs = 1 : scanl (+) 1 fibs 

fibsN :: Num a => Int -> a
fibsN x = fibs !! x

-- 1.
fibs20 = take 20 fibs

-- 2.
fibsUnder100 = takeWhile (< 100) fibs

-- 3.
fact :: (Num a, Enum a) => [a]
fact = scanl (*) 1 [1..]

factN x = fact !! x