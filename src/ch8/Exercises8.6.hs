module Exercises86 where

-- Review of Types
-- 1. d
-- 2. b
-- 3. d
-- 4. b


-- Review Currying

cattyConny :: String -> String -> String
cattyConny x y = x ++ " mrow " ++ y


-- fill in the types
flippy :: String -> String -> String
flippy = flip cattyConny 

appedCatty :: String -> String
appedCatty = cattyConny "woops"

frappe :: String -> String
frappe = flippy "haha"

-- 1. "woops mrow woohoo!"
-- 2. "1 mrow haha"
-- 3. frappe ("woops mrow 2") -> flippy "haha" "woops mrow 2" -> "woops mrow 2 mrow haha"
-- 4. appedCatty (frappe "blue") ->
--    appedCatty (flippy "haha" "blue")
--               ("blue mrow haha")
--    "woops mrow blue mrow haha"
-- 5. cattyConny (frappe "pink") (cattyConny "green" (appedCatty "blue"))
--                "pink mrow haha"                    "woops mrow blue"
--                                "green mrow woops mrow blue"
--    "pink mrow haha green mrow woops mrow blue"
-- 6. cattyConny (flippy "Pugs" "are") "awesome"
--    cattyConny   "are mrow Pugs" "awesome"
--    "are mrow Pugs mrow awesome"


-- Recursion

dividedBy :: Integral a => a -> a -> (a, a) 
dividedBy num denom = go num denom 0
    where go n d count
           | n < d = (count, n)
           | otherwise = go (n - d) d (count + 1)

{-

dividedBy 15 2 =
go 15 2 0
| otherwise = go (15 - 2) 2 (0 + 1)

-}

