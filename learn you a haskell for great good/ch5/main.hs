multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z
multNine = multThree 3 3

divideByTen :: (Floating a) => a -> a
divideByTen = (/10)

applyFnTwice :: (a->a) -> a -> a
applyFnTwice fn x = fn (fn x)

myZipWith :: (a->b->c)-> [a]->[b]->[c]
myZipWith _ [] _ = []
myZipWith _ _ [] = []
myZipWith f (x:xs) (y:ys) = f x y:(myZipWith f xs ys)


myFlip :: (a -> b -> c) -> (b->a->c)
myFlip f x y = f y x


myMap :: (a->b)->[a]->[b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

myFilter :: (a->Bool)->[a]->[a]
myFilter _ [] = []
myFilter f (x:xs)
  | f x  = x: myFilter f xs
  | otherwise = filter f xs


myCollatz :: Int->[Int]
myCollatz 1 = [1]
myCollatz x
  | even x  =  x : myCollatz (x `div` 2)
  | otherwise = x : myCollatz (x * 3 + 1) 

num = length (filter isLong (map myCollatz [1..100]))
          where isLong xs = length xs > 15
mySum :: (Num a)=> [a]->a
mySum = foldl (+) 0

myMapT :: (a->b)->[a]->[b]
myMapT f = foldr (\x acc -> f x : acc) []

myElem :: (Eq a) => a->[a]->Bool
myElem y = foldr (\x acc -> acc || x == y) False


myReverse :: [a]->[a]
myReverse = foldl (flip (:)) []


chain :: Integer -> [Integer]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n = n:chain (n*3 + 1)

addThree :: Int -> Int -> Int -> Int
addThree = \x -> \y -> \z -> x + y + z

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

map' :: (a -> b) -> [a] -> [b]
map' f = foldr (\x acc -> f x: acc) []

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

fn = ceiling . negate .tan . cos . max 50


oddSquareSum = length . takeWhile (<10000) . filter odd 
