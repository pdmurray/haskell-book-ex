module Exercises97 where

-- Comprehend thy lists

mySqr :: [Integer]
mySqr = [x^2 | x <- [1..5]]

{-
[x | x <- mySqr, rem x 2 == 0]
only shows even # squares 1-5

[(x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50]
the y predicate will totally filter out all possible values from mySqr.
therefore no pairings can take place.  It will result in an empty list.

take 5 [ (x, y) | x <- mySqr, y <- mySqr, x < 50, y > 50 ]
-}

myCube :: [Integer]
myCube = [y^3 | y <- [1..5]]

-- Square Cube

-- 1.
mySqrCube = [ (x, y) | x <- mySqr, y <- myCube ]

-- 2.
mySqrCube2 = [ (x, y) | x <- mySqr, y <- myCube, x < 50, y < 50 ]

-- 3. 
myLength = length mySqrCube2


-- Bottom Madness

{-
1.  bottom
2.  returns
3.  bottom
4.  returns
5.  bottom
6.  returns
7.  bottom
8.  returns
9.  returns
10. bottom

-- Is it in normal form?

1. 1
2. 2
3. 3
4. 3
5. 3
6. 3
7. 2

-}

