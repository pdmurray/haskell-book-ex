module Exercises912 where

import Data.Char

-- Data.Char problems

-- 1. isUpper :: Char -> Bool
--    toUpper :: Char -> Char

-- 2. 
removeLower :: [Char] -> [Char]
removeLower = filter isUpper

-- 3. 
capitalize :: [Char] -> [Char]
capitalize (x:xs) = (toUpper x):xs
capitalize _ = []

-- 4. 
allCaps :: [Char] -> [Char]
allCaps [] = []
allCaps (x:xs) = toUpper x : allCaps xs


-- 5. 
firstLetterCap :: [Char] -> Maybe Char
firstLetterCap xs 
    | length xs >= 1 = Just (toUpper $ head xs)
    | otherwise = Nothing

-- 6.
firstLetterCapComposed :: [Char] -> Maybe Char
firstLetterCapComposed xs 
    | length xs >= 1 = Just . toUpper . head $ xs
    | otherwise = Nothing

firstLetterCapPF :: [Char] -> Char
firstLetterCapPF = toUpper . head


-- Ciphers - See Ciphers.hs

-- Writing your own Standard Functions

-- Takes a list of Bools and returns True if any Bool in the list is True
myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = if x == True then True else myOr xs

-- returns True if a -> Bool applied to any of the values in the list returns True.
myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = if f x == True then True else myAny f xs


-- returns True if element is present in List
myElem :: Eq a => a -> [a] -> Bool
myElem _ [] = False
myElem x (y:ys) = if x == y then True else myElem x ys

myElem' :: Eq a => a -> [a] -> Bool
myElem' _ [] = False
myElem' x y = myAny ((==) x) y


-- Reverse a list
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]


-- flattens a list into a list of lists
squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs


-- maps a function over a list and concatenates the results.
-- Prelude> squishMap (\x -> [1, x, 3]) [2]
--   [1,2,3]
-- Prelude> squishMap (\x -> "WO "++[x]++" HOO ") "123"
--   "WO 1 HOO WO 2 HOO WO 3 HOO "
squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = f x ++ squishMap f xs


-- flattens a list of lists into a list. This time re-use the squishMap function.
squishAgain :: [[a]] -> [a]
squishAgain = squishMap id


-- takes a comparison function and a list and returns the greatest element of the 
-- list based on the last value that the comparison returned GT for.
-- Prelude> let xs = [1, 53, 9001, 10]
-- Prelude> myMaximumBy compare xs
--   9001
myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = undefined