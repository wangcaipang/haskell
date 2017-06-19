import Data.List
import Data.Char
countWords :: String -> [(String, Int)]

countWords = map (\x -> (head x, length x)) . group . sort . words

myUnique :: (Eq a)=> [a]->[a]
myUnique [] = []
myUnique (x:xs) = if x `elem` xs then myUnique xs else x:myUnique xs

numSum :: Int -> Int
numSum = sum . map digitToInt . show