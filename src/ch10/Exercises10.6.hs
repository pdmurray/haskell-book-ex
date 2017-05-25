module Exercises106 where

import Data.Time

data DatabaseItem = DbString String
                  | DbNumber Integer
                  | DbDate   UTCTime
                  deriving (Eq, Ord, Show)


theDatabase :: [DatabaseItem]
theDatabase =
  [ DbDate (UTCTime
           (fromGregorian 1911 5 1)
    (secondsToDiffTime 34123)) 
    , DbNumber 9001
    , DbString "Hello, world!" 
    , DbDate (UTCTime
              (fromGregorian 1921 5 1)
              (secondsToDiffTime 34123))
    , DbNumber 8005
  ]

-- 1. 
filterDbDate :: [DatabaseItem] -> [UTCTime]
filterDbDate = foldr f []
  where f (DbDate x) xs = x : xs
        f _ xs = xs

-- 2.
filterDbNumber :: [DatabaseItem] -> [Integer]
filterDbNumber = foldr f []
  where f (DbNumber x) xs = x : xs
        f _ xs = xs

-- 3.
mostRecent :: [DatabaseItem] -> UTCTime
mostRecent = maximum . filterDbDate

-- 4. 
sumDb :: [DatabaseItem] -> Integer
sumDb = sum . filterDbNumber

-- 5.
avgDb :: [DatabaseItem] -> Double
{-
avgDb x = dbNumberSum / dbNumberLength
  where dbNumberSum = fromIntegral $ sumDb x
        dbNumberLength = fromIntegral (length $ filterDbNumber x)
-}
avgDb = average . filterDbNumber

average :: (Integral a) => [a] -> Double
average [] = 0.0
average xs = fromIntegral (sum xs) / fromIntegral (length xs)