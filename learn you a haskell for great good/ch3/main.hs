lucky :: Int -> String
lucky 7 = "Lucky Number Seven"
lucky x = "You're not lucky number"

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n-1)

larger :: (Ord a) => a -> a -> a
larger a b = if a > b then a else b

head' :: [a]->a
head' [] = error "Empty List!"
head' (x:_) = x

tell :: (Show a)=>[a]->String
tell [] = error "Empty List!"
tell [x] = "The list has one element: " ++ show x
tell [x,y] = "The list has two elements: " ++ show x ++ " " ++ show y
tell all@(a:_) = "The list has too many elements, the first element: " ++ show a ++ " and the last element: " ++ show (last all)

bmiTell :: [(Double, Double)]->[Double]

bmiTell xs = [bmi a b | (a, b)<-xs]
  where bmi weight height = weight/height ^2

initials :: String -> String -> String
initials firstName lastName = f:[l]
  where (f:_) = firstName
        (l:_) = lastName

describeList :: [a]->String
describeList xs = "this list is " ++ case xs of [] -> "empty list"
                                                [x] -> "a singleton list"
                                                _ -> "a longer list"
