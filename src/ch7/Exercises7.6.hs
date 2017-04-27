module Exercises76 where

dodgy x y = x + y * 10
oneIsOne = dodgy 1
oneIsTwo = (flip dodgy) 2


-- dodgy 1 binds x so it becomes dodgy y = y * 10
-- flip dodgy 


-- 1. dodgy 1 0 -> 1
-- 2. dodgy 1 1 -> 11
-- 3. dodgy 2 2 -> 22
-- 4. dodgy 1 2 -> 21
-- 5. dodgy 2 1 -> 12

-- 6. oneIsOne 1 is same as dodgy 1 1 -> 11
-- 7. oneIsOne 2 -> 21
-- 8. oneIsTwo 1 (flip dodgy) 2 1 -> dodgy 1 2 -> 21
-- 9. oneIsTwo 2 -> (flip dodgy) 2 2 -> dodgy 2 2 -> 22
-- 10. oneIsOne 3 -> dodgy 1 3 -> 31
-- 11. oneIsTwo 3 -> (flip dodgy) 2 3 -> dodgy 3 2 -> 23
