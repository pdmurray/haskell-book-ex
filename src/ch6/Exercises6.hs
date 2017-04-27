module Exercises6 where

import Data.List

--Multiple Choice
--1. c
--2. b
--3. a
--4. c
--5. a

--Does it Typecheck?
--1. No.  Person type needs to be an instance of Show
data Person = Person Bool 
              deriving Show

printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)

--2. No.  Mood needs to be an instance of Eq
data Mood = Blah
            | Woot deriving (Eq, Show)

settleDown x = if x == Woot 
               then Blah
               else x

--3. a) Woot or Blah
--   b) You will get a type error, No instance for (Num Mood) from '9'
--   c) Type error, no instance for (Ord Mood) from '>'

--4. Yes, but s1 will not show.  
--   Not enough arguments in s1, so No instance for (Show (Object -> Sentence))
type Subject = String
type Verb    = String
type Object  = String

data Sentence =
    Sentence Subject Verb Object
    deriving (Eq, Show)

s1 = Sentence "dogs" "drool"
s2 = Sentence "Julie" "loves" "dogs"

-- Given a datatype declaration, what can we do?
data Rocks =
    Rocks String deriving (Eq, Show)

data Yeah =
    Yeah Bool deriving (Eq, Show)

data Papu =
    Papu Rocks Yeah deriving (Eq, Show)


-- 1.  No.  Types are incorrect; need to be Rocks and Yeah, not just String and Bool
-- 2.  Yes.
-- 3.  Yes.
-- 4.  No, Papu, Rocks and Yeah need to be an instance of Ord


-- Match the types
-- 1.  No, i needs to be an instance of Num
-- 2.  1.0 cannot be Num, because 1.0 doesn't work with all subclasses of Num
--f :: Num a => a
--f = 1.0
-- 3. Works
-- f :: Fractional a => a
-- f = 1.0
-- 4. works
f :: RealFrac a => a
f = 1.0
-- 5. works, this is just an identity function, which is fully polymorphic
freud :: Ord a => a -> a
freud x = x
-- 6. works.  identity function works fine with Int
freud' :: Int -> Int
freud' x = x
-- 7. doesn't work; it will if the type of sigmund returns Int instead of 'a'
myX = 1 :: Int
sigmund ::  a -> Int
sigmund x = myX
-- 8. doesn't work because myX is already concretely bound to Int, sigmund' cannot return any Num
sigmund' x = myX
--sigmund' :: Num a => a -> a
-- 9. works, Int is instance of Ord (from sort) and signature matches
--jung :: Ord a => [a] -> a
jung :: [Int] -> Int
jung xs = head (sort xs)
-- 10. works
--young :: [Char] -> Char
--young xs = head (sort xs)
young :: Ord a => [a] -> a
young xs = head (sort xs)
-- 11. breaks because signifier accepts anything instance of Ord by mySort is restricted to [Char]
mySort :: [Char] -> [Char] 
mySort = sort
--signifier :: [Char] -> Char 
--signifier xs = head (mySort xs)
--signifier :: Ord a => [a] -> a
--signifier xs = head (mySort xs)

-- Type-Kwon-Do
-- 1. 
chk :: Eq b => (a -> b) -> a -> b -> Bool
chk f x y = (f x) == y
-- example: chk succ 1 2 -> True

-- 2. 
arith :: Num b => (a -> b) -> Integer -> a -> b
arith aToB x a' = (aToB a') + fromInteger x