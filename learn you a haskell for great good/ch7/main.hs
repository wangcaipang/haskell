data Shape = Circle Float Float Float
            | Rectangle Float Float Float Float 
     deriving (Show)

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x1 - x2) * (abs $ y1 - y2)

data Vector a = Vector a a a deriving (Show)
vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i + l) (j + m) (k + n)

infixr 5 :-:
data List a = Empty | a :-: (List a) deriving(Show, Read, Eq, Ord)

infixr 5 ^++^
(^++^) :: List a -> List a -> List a
Empty ^++^ ys = ys
(x :-: xs) ^++^ ys = x :-: (xs ^++^ ys)

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)


singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right) 
  | x == a = Node x left right
  | x < a = Node a (treeInsert x left) right
  | x > a = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x emptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x < a = treeElem x left
  | x > a = treeElem x right