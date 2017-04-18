module Exercises5 where

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

-- Apply Yourself
-- 1.  myConcat :: [Char] -> [Char]
-- 2.  myMult :: Fractional a => a -> a
-- 3.  myTake :: Int -> [Char]
-- 4.  myCom :: Int -> Bool
--     * note that typeclass constraint is gone because Int implements Num so that 
--     constraint is redundant.
-- 5.  myAlph :: Char -> Bool


-- Chapter Exercises
-- Multiple Choice
-- 1. c
-- 2. a
-- 3. b
-- 4. c
-- Determine the type
-- 1.
-- a) 54, Num a => a
-- b) (0,"doge"), Num a => (a, [Char])
-- c) (0,"doge"), (Integer, [Char])
-- d) False, Bool
-- e) 5, Int
-- f) False, Bool
-- 2. Num a => a
-- 3. Num a => a -> a
-- 4. Fractional a => a
-- 5. [Char]

-- Does it Compile?
-- 1. breaks on line 2, becuase bigNum is not a function, it is a value.
-- 2. works
-- 3. breaks on c = b 10, b is a value not a function.
--    change to c = a 10
-- 4. breaks, b and c are not defined

-- Type variable or specific type constructor?
-- 2. f :: zed -> Zed -> Blah
--         [1]    [2]    [3]
--  fully polymorphic [1], concrete [2], concrete [3]
-- 3. f :: Enum b => a -> b -> C
--                   [1]  [2]  [3]
--  fully [1], constrained [2], concrete [3]
-- 4. f :: f -> g -> C
--         [1]  [2]  [3]
--  fully, fully, concrete

-- Write a type signature
-- 1.
functionH :: [a] -> a
functionH (x:_) = x

-- 2.
functionC :: Ord a => a -> a -> Bool
functionC x y = if (x > y) then True else False

-- 3.
functionS :: (a, b) -> b
functionS (x, y) = y

-- Given a type, write a function
-- 1.
i :: a -> a
i a = a

-- 2. 
c :: a -> b -> a 
c x _ = x

-- 3.  c'' is the same as c.
c'' :: b -> a -> b 
c'' x _ = x

-- 4.
c' :: a -> b -> b 
c' _ y = y

-- 5.
r :: [a] -> [a] 
r a = reverse a

-- 6.  same as (.) operator.  (.) is for composing two functions together to make a new function.
co :: (b->c) -> (a->b) -> a -> c 
co bToC aToB a = (bToC (aToB a))

-- 7. 
a :: (a->c) -> a -> a
a xToY x = x

-- 8.
a' :: (a->b) -> a -> b 
a' f x = f x


-- Fix it
-- 1.