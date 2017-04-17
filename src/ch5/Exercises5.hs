module Exercises4 where

-- Interlude

-- 1.  a;   let f :: a -> a -> a -> a; f = undefined
-- 2.  d;   let g :: a -> b -> c -> b; g = undefined
-- 3.  d;   let h :: (Num a, Num b) => a -> b -> b; h = undefined
-- 4.  c;   let h :: (Num a, Num b) => a -> b -> b; h = undefined
-- 5.  a;   let jackal :: (Ord a, Eq b) => a -> b -> a; jackal = undefined
-- 6.  e
-- 7.  d;   let kessel :: (Ord a, Num b) => a -> b -> a; kessel = undefined
-- 8.  a    (a is Ord in constraint and 1 is Num)
-- 9.  c    (a is set to Integer)

-- Parametricity
-- 1. let id :: a -> a; id x = x
-- 2. let id :: a -> a -> a; id x y = x
--    let id :: a -> a -> a; id x y = y
-- 3. let id :: a -> b -> b; id x y = y
--    it only has one implementation.  The behaviour doesn't change when the types change.