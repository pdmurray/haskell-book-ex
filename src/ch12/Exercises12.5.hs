module Exercises125 where

import qualified Data.Maybe

-- Determine the Kinds

-- 1.  id :: a -> a    a has kind *
-- 2.  r :: a -> f a   a has kind *, f a has kind * -> *

-- String Processing

-- 1. 
-- example GHCi session above the functions

-- >>> notThe "the"
-- Nothing
-- >>> notThe "blahtheblah"
-- Just "blahtheblah"
-- >>> notThe "woot"
-- Just "woot"
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe x = Just x

theToA :: Maybe String -> String
theToA Nothing = "a"
theToA (Just x) = x

-- >>> replaceThe "the cow loves us" -- "a cow loves us"
replaceThe :: String -> String
replaceThe x = unwords $ map (theToA . notThe) $ words x


-- 2.
vowelInitial :: String -> Maybe String
vowelInitial x
    | head x `elem` "aeiou" = Nothing
    | otherwise = Just x

countTheBeforeVowel :: String -> Integer
countTheBeforeVowel = undefined


-- 3.
isVowel :: Char -> Maybe Char
isVowel x
    | x `elem` "aeiou" = Just x
    | otherwise = Nothing

countVowels :: String -> Integer 
countVowels = toInteger . length . Data.Maybe.mapMaybe isVowel

-- Validate the word
newtype Word' =
    Word' String
    deriving (Eq, Show)

mkWord :: String -> Maybe Word'
mkWord x
    | numVowels > numConsonants = Nothing
    | otherwise = Just (Word' x)
    where 
        numVowels = countVowels x
        numConsonants = toInteger (length x) - numVowels


-- It's only Natural
data Nat =
    Zero
  | Succ Nat
  deriving (Eq, Show)

natToInteger :: Nat -> Integer
natToInteger Zero = 0
natToInteger (Succ n) = 1 + natToInteger n

integerToNat :: Integer -> Maybe Nat
integerToNat x
    | x < 0 = Nothing
    | otherwise = Just (f x)
    where f x
            | x == 0 = Zero
            | otherwise = Succ (f (x - 1))


-- Small library for Maybe
-- 1.
isJust :: Maybe a -> Bool
isJust (Just _) = True
isJust Nothing = False

isNothing :: Maybe a -> Bool
isNothing = not . isJust

-- 2. 
mayybee :: b -> (a -> b) -> Maybe a -> b
maybee b _ Nothing = b
mayybee _ f (Just a) = f a

-- 3.
fromMaybe :: a -> Maybe a -> a
fromMaybe a Nothing = a
fromMaybe _ (Just a) = a

-- 4.
listToMaybe :: [a] -> Maybe a
listToMaybe (a:_) = Just a
listToMaybe _ = Nothing

maybeToList :: Maybe a -> [a]
maybeToList (Just a) = [a]
maybeToList _ = []

-- 5.
catMaybes :: [Maybe a] -> [a]
catMaybes maybeAs = [x | Just x <- maybeAs]

-- 6.
flipMaybe :: [Maybe a] -> Maybe [a]
flipMaybe [] = Just []
flipMaybe xs = foldr f (Just []) xs
  where f (Just a) (Just b) = Just (a:b)
        f _ _ = Nothing



-- Small library for Either
-- 1.
lefts' :: [Either a b] -> [a]
lefts' = foldr f []
    where f (Left a) xs = a : xs
          f _ xs = xs

-- 2.
rights' :: [Either a b] -> [b]
rights' = foldr f []
    where f (Right b) xs = b : xs
          f _ xs = xs

-- 3.
partitionEithers' :: [Either a b] -> ([a], [b])
partitionEithers' = foldr f ([], [])
    where f (Left a) (xs, ys) = (a:xs, ys)
          f (Right b) (xs, ys) = (xs, b:ys)

-- 4.
-- eitherMaybe' even (Right 2)
-- eitherMaybe' even (Left 2)
eitherMaybe' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe' f (Right x) = Just (f x)
eitherMaybe' _ (Left _) = Nothing


-- 5.
either' :: (a -> c) -> (b -> c) -> Either a b -> c
either' _ g (Right x) = g x
either' f _ (Left x) = f x 


-- 6.
eitherMaybe'' :: (b -> c) -> Either a b -> Maybe c
eitherMaybe'' _ (Left _) = Nothing
eitherMaybe'' f e = Just (either' undefined f e)



-- Unfolds