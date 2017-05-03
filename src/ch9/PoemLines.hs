module PoemLines where

firstSen = "Tyger Tyger, burning bright\n"
secondSen = "In the forests of the night\n"
thirdSen = "What immortal hand or eye\n"
fourthSen = "Could frame thy fearful symmetry?"
sentences = firstSen ++ secondSen
            ++ thirdSen ++ fourthSen

-- putStrLn sentences -- should print
-- Tyger Tyger, burning bright
-- In the forests of the night
-- What immortal hand or eye
-- Could frame thy fearful symmetry?

-- Implement this
splitter :: (Eq a) => a -> [a] -> [[a]]
splitter _ [] = []
splitter sep input = beg : end
    where
        notSep = \x -> x /= sep
        isSep = \x -> x == sep
        beg = takeWhile notSep input
        end = splitter sep . dropWhile isSep . dropWhile notSep $ input

myLines :: String -> [String]
myLines = splitter '\n'

myWords :: String -> [String]
myWords = splitter ' '

-- we can even do things like split on an Integer
myOnes :: Integer -> [Integer]
myOnes = splitter 1

-- What we want 'myLines sentences' to equal
shouldEqual =
    [ "Tyger Tyger, burning bright"
    , "In the forests of the night"
    , "What immortal hand or eye"
    , "Could frame thy fearful symmetry?" ]


-- The main function here is a small test
-- to ensure you've written your function
-- correctly.
main :: IO ()
main =
    print $ "Are they equal? "
            ++ show (myLines sentences == shouldEqual)