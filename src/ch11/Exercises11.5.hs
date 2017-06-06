module Exercises115 where

data DogueDeBordeaux doge = DogueDeBordeaux doge

data Doggies a =
      Husky a
    | Mastiff a
    deriving (Eq, Show)

{-

1.  Doggies is a type constructor
2.  Doggies is kind * -> *
3.  Doggies String is kind *
4.  Husky 10 is: Num a => Doggies a
5.  Husky (10 :: Integer) is: Doggies Integer
6.  Mastiff "Scooby Doo" is: Mastiff [Char]
7.  DogueDeBordeaux is both a type and a data constructor
8.  DogueDeBordeaux is type: doge -> DogueDeBordeaux doge
9.  DogueDeBordeaux "doggie!" is type: DogueDeBordeaux [Char]

-}
