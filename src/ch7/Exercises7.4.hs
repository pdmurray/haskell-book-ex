module Exercises74 where

-- 1.
-- a) k :: (t1, t) -> t1
k (x, y) = x
-- b) k1 :: Num t1 => t1
k1 = k ((4-1), 10)
-- c) k2 :: [Char]
k2 = k ("three", (1+2))
-- d) k3 :: Num t1 => t1
k3 = k (3, True)

-- 2.
f :: (a, b, c) -> (d, e, f) -> ((a, d), (c, f))
f (a, _, c) (d, _, f) = ((a, d), (c, f))