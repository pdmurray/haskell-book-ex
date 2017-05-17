module Exercises911 where

-- 1. 

zip' :: [a] -> [b] -> [(a, b)]
zip' [] y = []
zip' x [] = []
zip' (x:xs) (y:ys) = (x, y) : zip' xs ys

-- 2.
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f (x:xs) (y:ys) = f x y : zipWith f xs ys
zipWith' _ _ _ = []

-- 3.
zip'' :: [a] -> [b] -> [(a, b)]
zip'' = zipWith' (,)