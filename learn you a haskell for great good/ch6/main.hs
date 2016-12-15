import Data.List

countWords :: [Char] -> [[String]]

countWords = group . sort . words

myUnique :: (Eq a)=> [a]->[a]
myUnique [] = []
myUnique (x:xs) = if x `elem` xs then myUnique xs else x:myUnique xs
