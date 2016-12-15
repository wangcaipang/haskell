myMax :: (Ord a)=> [a]-> a
myMax [] = error "Error! Empty List"
myMax [x] = x
myMax (x:xs) = max x (myMax xs)

rep :: Int -> a -> [a]
rep 0 a = []
rep num a = a:(rep (num -1) a)

myTake :: Int -> [a] -> [a]
myTake 0 (x:_) = []
myTake num [] = []
myTake num (x:xs) = x:(myTake (num-1) xs)

myReverse:: [a]->[a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

myZip:: [a]->[b]->[(a, b)]
myZip [] (x:_) = []
myZip (x:_) [] = []
myZip (x:xs) (y:ys) = (x,y):(myZip xs ys)

myElem::(Eq a)=> a->[a]->Bool
myElem a [] = False
myElem a (x:xs) = a == x || (myElem a xs)

myQuickSort::(Ord a)=> [a]->[a]
myQuickSort [] = []
myQuickSort [x] = [x]
myQuickSort (x:xs) = let smaller = [a| a<-xs, a <= x]
                         bigger = [b | b<-xs, b >x]
                     in (myQuickSort smaller) ++ [x] ++ (myQuickSort bigger)
