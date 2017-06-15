module Exercises1112 where

type Gardener = String

-- 1.  
data Garden =
      Gardenia Gardener 
    | Daisy Gardener 
    | Rose Gardener 
    | Lilac Gardener 
    deriving Show