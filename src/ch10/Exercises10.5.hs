module Exercises105 where

-- 1. a) has an error; b and c both return the same result

-- 2. foldl (flip (*)) 1 [1,2,3,4,5]
{-
(((((1 * 1) * 2) * 3) * 4) * 5)
((((1 * 2) * 3) * 4) * 5)
(((2 * 3) * 4) * 5)
((6 * 4) * 5)
(24 * 5)
120
-}

-- 3. One difference between foldl and foldr is: c) foldr, but not foldl, associates to the right

-- 4. Folds are catamorphisms, which means they are generally used to:
--    a) reduce structure

{-
5. 
a) foldr (++) "" ["woot", "WOOT", "woot"]
b) foldr max "" ["fear", "is", "the", "little", "death"]
c) foldr (&&) True [False, True]
d) No, it will always return True
e) foldr ((++) . show) "" [1..5]
f) foldr (flip const) 'a' [1..5]
g) foldr (flip const) 0 "tacos"
h) foldl const 0 "burritos"
i) foldl const 'z' [1..5]
-} 