module Exercises79 where

f = length . filter (== 'a')

-- 1. filter compares the input string with 'a' and returns a new string.
--    length evaluates the length of the string and returns it.


-- 2.
add :: Int -> Int -> Int
add x y = x + y

addPF :: Int -> Int -> Int
addPF = (+)

addOne :: Int -> Int
addOne = \x -> x + 1

addOnePF :: Int -> Int
addOnePF = (+1)

main :: IO () 
main = do
    -- prints 0
    print (0 :: Int)
    -- prints 1
    print (add 1 0)
    -- prints 1
    print (addOne 0)
    -- prints 1
    print (addOnePF 0)
    -- this is like doing addOne(addOne 0)) -> 2
    print ((addOne . addOne) 0)
    -- same as asbove
    print ((addOnePF . addOne) 0)
    -- same as above
    print ((addOne . addOnePF) 0)
    -- same as above
    print ((addOnePF . addOnePF) 0)
    -- (-1)
    print (negate (addOne 0))
    -- like negate (addOne 0) -> (-1)
    print ((negate . addOne) 0)
    -- (addOne (addOne (addOne (negate (addOne 0)))) -> 2
    print ((addOne . addOne . addOne . negate . addOne) 0)

-- The choice of whether to use parentheses or the dollar sign 
-- isn’t important; it is just a question of style and ease of writing and reading.