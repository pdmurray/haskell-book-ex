-- Exercises3.hs
module Exercises3 where

concatExclamation :: String -> String 
concatExclamation x = x ++ y
    where y :: String 
          y = "!"

index4 :: String -> String
index4 x = take 1 (drop 4 x)


thirdLetter :: String -> Char
thirdLetter x = x !! y
    where y :: Int
          y = 3

letterIndex :: Int -> Char
letterIndex x = curryString !! x

curryString :: String
curryString = "Curry is awesome"


rvrs :: String -> String
rvrs x = (drop 9 x) ++ " " ++ (drop 6 (take 8 x)) ++ " " ++ (take 5 x)

main :: IO ()
main = do
    putStrLn (concatExclamation curryString)
    putStrLn (index4 curryString)
    print (thirdLetter curryString)
    print (letterIndex 4)
    putStrLn (rvrs curryString)