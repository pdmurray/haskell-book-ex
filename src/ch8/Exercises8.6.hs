module Exercises86 where

-- Review of Types
-- 1. d
-- 2. b
-- 3. d
-- 4. b


-- Review Currying

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y


-- fill in the types
flippy :: String -> String -> String
flippy = flip cattyConny 

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- 1. "woops mrow woohoo!"
-- 2. "1 mrow haha"
-- 3. frappe ("woops mrow 2") -> flippy "haha" "woops mrow 2" -> "woops mrow 2 mrow haha"
-- 4. appedCatty (frappe "blue") ->
--    appedCatty (flippy "haha" "blue")
--               ("blue mrow haha")
--    "woops mrow blue mrow haha"
-- 5. cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue"))
--                "pink mrow haha"                    "woops mrow blue"
--                                "green mrow woops mrow blue"
--    "pink mrow haha green mrow woops mrow blue"
-- 6. cattyConny (flippy "Pugs" "are") "awesome"
--    cattyConny   "are mrow Pugs" "awesome"
--    "are mrow Pugs mrow awesome"


-- Recursion

dividedBy :: Integral a => a -> a -> (a, a) 
dividedBy num denom = go num denom 0
    where go n d count
           | n < d = (count, n)
           | otherwise = go (n - d) d (count + 1)

{-
1.

dividedBy 15 2 =
go 15 2 0
| otherwise = go (15 - 2) 2 (0 + 1)

-}


-- 2.
sumToN :: (Eq a, Num a) => a -> a
sumToN 0 = 0
sumToN 1 = 1
sumToN num = num + sumToN (num - 1)


-- 3.
multRec :: (Integral a) => a -> a -> a
multRec multA multB = go multA multB 0
    where go a b acc
           | b == 0 = acc
           | otherwise = go a (b - 1) (acc + a) 


-- Fixing dividedBy
data DividedResult = 
    Result Integer
    | DividedByZero
    deriving Show

dividedBy' :: Integer -> Integer -> (DividedResult, DividedResult)
dividedBy' num denom
    | denom == 0 = (DividedByZero, DividedByZero)
    | otherwise = go (abs num) (abs denom) 0 (if (num < 0) then negate else id) (if (denom < 0) then negate else id)
    where go n d count n1 n2
           | n < d = (Result (n1 . n2 $ count), Result (n2 n))
           | otherwise = go (n - d) d (count + 1) n1 n2


-- McCarthy 91

mc91 :: (Ord a, Num a) => a -> a
mc91 n
    | n > 100 = n - 10
    | otherwise = mc91 . mc91 $ n + 11


-- Numbers into Words
-- module:  WordNumber.hs