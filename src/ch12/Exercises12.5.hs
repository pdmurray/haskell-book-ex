module Exercises125 where

-- Determine the Kinds

-- 1.  id :: a -> a    a has kind *
-- 2.  r :: a -> f a   a has kind *, f a has kind * -> *

-- String Processing

-- 1. 
-- example GHCi session above the functions

-- >>> notThe "the"
-- Nothing
-- >>> notThe "blahtheblah"
-- Just "blahtheblah"
-- >>> notThe "woot"
-- Just "woot"
notThe :: String -> Maybe String
notThe "the" = Nothing
notThe x = Just x

-- >>> replaceThe "the cow loves us" -- "a cow loves us"
replaceThe :: String -> String
replaceThe x = unwords $ map (theToA . notThe) $ words x

theToA :: Maybe String -> String
theToA Nothing = "a"
theToA (Just x) = x
