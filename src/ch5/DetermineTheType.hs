{-# LANGUAGE NoMonomorphismRestriction #-}

module DetermineTheType where -- simple example

example = 1
example1 = (* 9) 6
example2 = head [(0,"doge"),(1,"kitteh")]
example3 = head [(0 :: Integer, "doge"),(1, "kitteh")]
example4 = if False then True else False
example5 = length [1, 2, 3, 4, 5]
example6 = (length [1,2,3,4]) > (length "TACOCAT")


-- 2-4.
x = 5
y = x + 5
w = y * 10
z y = y * 10
f = 4 / y

-- 5. 
t = "Julie"
u = " <3 "
v = "Haskell"
m = t ++ u ++ v