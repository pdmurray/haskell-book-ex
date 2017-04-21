module Exercises65 where


-- 1.
data TisAnInteger =
    TisAn Integer

instance Eq TisAnInteger where
    (==) (TisAn v) (TisAn v') = v == v'

-- 2.
data TwoIntegers =
    Two Integer Integer

instance Eq TwoIntegers where
    (==) (Two v w) (Two v' w') = v == v' && w == w'

-- 3.
data StringOrInt =
    TisAnInt Int
  | TisAString String

-- 4.
data Pair a =
    Pair a a

-- 5.
data Tuple a b =
    Tuple a b

-- 6.
data Which a =
    ThisOne a
  | ThatOne a

-- 7.
data EitherOr a b =
    Hello a
  | Goodbye b