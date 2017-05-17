module Exercises99 where

import Data.Bool

-- More Bottoms

{-
1. Bottom
2. Returns 2
3. Returns 2, then exception
4. It tests each character in a string and returns a list with True/False 
   values corresponding to if they are vowels.
    type is String -> [Bool]
5. a) square of each digit 1-10
   b) [1, 10, 20]
   c) [15, 15, 15]
6. map (\x -> bool x (-x) (x==3) ) [1..10]
-}