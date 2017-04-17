-- print3broken.hs
module AddStuff where

addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

subtractStuff :: Integer -> Integer -> Integer
subtractStuff x y = x - y - 10
subtractOne = subtractStuff 1


autoCurry :: ((t1, t2) -> t) -> t1 -> t2 -> t
autoCurry f a b = f (a, b)