{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE FlexibleInstances #-}

module Exercises119 where


class TooMany a where 
    tooMany :: a -> Bool

instance TooMany Int where 
    tooMany n = n > 42

newtype Goats = 
    Goats Int deriving (Eq, Show, TooMany)


-- Exercises:  Logic Goats

-- 1. 
instance TooMany (Int, String) where 
    tooMany (n, _) = n > 42

-- 2.
instance TooMany (Int, Int) where 
    tooMany (n, m) = (n + m) > 42

-- 3.
instance (Num a, TooMany a) => TooMany (a, a) where
    tooMany (n, m) = tooMany (n + m)