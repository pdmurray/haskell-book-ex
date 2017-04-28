module Exercises7 where

-- Multiple Choice
-- 1. d
-- 2. b
-- 3. d
-- 4. b
-- 5. a

-- Let's write code
-- 1. 
-- a)
tensDigit :: Integral a => a -> a
tensDigit x = d
    where xLast = fst (x `divMod` 10)
          d     = snd (xLast `divMod` 10)
-- b) Yes, the type signature is the same
-- c)
hunsDigit :: Integral a => a -> a
hunsDigit x = d
    where xLast = fst (x `divMod` 100)
          d     = snd (xLast `divMod` 10)

-- 2.
-- pattern match:
foldBool3 :: a -> a -> Bool -> a
foldBool3 x _ True = x 
foldBool3 _ y False = y

-- case version:
foldBool' :: a -> a -> Bool -> a
foldBool' x y t = case t of
    True -> x
    False -> y

-- guard version: 
-- note, 't = x' works because if t == True, the guard is True
foldBool'' :: a -> a -> Bool -> a
foldBool'' x y t
    | t = x
    | otherwise = y

-- 3. 
g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)

-- Main> g show (1, 2)
-- Main> ("1", 2)

-- 4.
-- see: arith4.hs

-- 5. 
roundTripPF :: (Show a, Read a) => a -> a
roundTripPF = read . show

-- 6. 

roundTrip' :: (Show a, Read b) => a -> b
roundTrip' = read . show

main :: IO ()
main = do
    print ((roundTrip' 4) :: Int)
    print (id 4)