module Exercises175 where

import Control.Applicative
import Data.List (elemIndex)


-- Exercises: Lookups

-- 1. 
added :: Maybe Integer
added = fmap (+3) (lookup 3 $ zip [1, 2, 3] [4, 5, 6])


-- 2.
y :: Maybe Integer 
y = lookup 3 $ zip [1,2,3] [4,5,6]

z :: Maybe Integer
z = lookup 2 $ zip [1,2,3] [4,5,6]

tupled :: Maybe (Integer, Integer)
tupled = (,) <$> y <*> z


-- 3.
x2 :: Maybe Int
x2 = elemIndex 3 [1,2,3,4,5]

y2 :: Maybe Int
y2 = elemIndex 4 [1,2,3,4,5]

max' :: Int -> Int -> Int
max' = max

maxed :: Maybe Int
maxed = max' <$> x2 <*> y2


-- 4.
xs = [1,2,3]
ys = [4,5,6]

x4 :: Maybe Integer
x4 = lookup 3 $ zip xs ys

y4 :: Maybe Integer
y4 = lookup 2 $ zip xs ys

summed :: Maybe Integer
summed = fmap sum $ (,) <$> x4 <*> y4


-- Identity
newtype Identity a = Identity a 
    deriving (Eq, Ord, Show)

instance Functor Identity where 
    fmap f (Identity a) = Identity (f a)

instance Applicative Identity where 
    pure = Identity
    (<*>) (Identity f) (Identity a) = Identity (f a)


-- Constant
newtype Constant a b =
    Constant { getConstant :: a } 
    deriving (Eq, Ord, Show)

instance Functor (Constant a) where
    fmap _ (Constant a) = Constant a

instance Monoid a => Applicative (Constant a) where
    pure _ = Constant mempty
    (<*>) (Constant f) (Constant x) = Constant $ mappend f x


-- Fixer Upper

-- 1.
f1 = const <$> Just "Hello" <*> pure "World"

-- 2.
f2 = (,,,) <$> Just 90 <*> Just 10 <*> Just "Tierness" <*> pure [1, 2, 3]