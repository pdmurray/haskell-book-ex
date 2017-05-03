module Exercises95 where

myEnumFromTo :: (Enum a) => a -> a -> [a]
myEnumFromTo x y
    | xz > yz = []
    | xz == yz = x:[]
    | otherwise = x : myEnumFromTo (succ x) y
            where xz = fromEnum x
                  yz = fromEnum y
              

eftBool :: Bool -> Bool -> [Bool]
eftBool = myEnumFromTo

eftOrd :: Ordering -> Ordering -> [Ordering]
eftOrd = myEnumFromTo

eftInt :: Int -> Int -> [Int]
eftInt = myEnumFromTo

eftChar :: Char -> Char -> [Char]
eftChar = myEnumFromTo