module Exercises118 where

-- Exercises: Cardinality

{-
1.  Nullary
2.  3
3.  65536
4.
Prelude> minBound :: Int
-9223372036854775808
Prelude> maxBound :: Int
9223372036854775807

Integer does not have an instance of bounded, so appears to be unbounded.

5.  the '8' in Int8 refers to 8 bits => 2^8 = 256.  Likewise with Int16, etc.
-}


-- Exercises: For Example

data Example = MakeExample deriving Show


data Example2 = MakeExample2 Int deriving Show

{-
1.  type is:  MakeExample :: Example

*Exercises118> :t Example

<interactive>:1:1: error: Data constructor not in scope: Example

2.  :info shows that Show is the only instance defined on Example
data Example = MakeExample
        -- Defined at src/ch11/Exercises11.8.hs:23:1
instance [safe] Show Example
  -- Defined at src/ch11/Exercises11.8.hs:23:37

3.  Now, it shows that the data constructor requires an Int to form a concrete type.
*Exercises118> :t MakeExample2
MakeExample2 :: Int -> Example2

-}