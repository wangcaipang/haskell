data List a = Cons a (List a)
            | Nil
              deriving(Show)


fromList (Cons x xs) = x:(fromList xs)
fromList Nil = []