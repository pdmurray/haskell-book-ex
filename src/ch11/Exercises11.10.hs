module Exercises1110 where

-- Exercises: Pity the Bool

-- 1.  Cardinality: 4.  Bool is 2 and sum type is addition.
-- 2.  The cardinality is 2 + 256 = 258.
--     If you try to create a numeric literal less than -128
--     or greater than 127, you get an error:
--     "Literal 130 is out of the Int8 range -128..127"

-- needed to have Int8 in scope
import Data.Int
    
data NumberOrBool =
    Numba Int8
    | BoolyBool Bool deriving (Eq, Show)

-- Example use of Numba, parentheses due to 
-- syntactic collision between (-) minus and 
-- the negate function
-- let myNumba = Numba (-128)