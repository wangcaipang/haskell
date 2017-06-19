-- instance Functor IO where
--   fmap f action = do
--     result <- action
--     return (fmap result)

main = do line <- fmap reverse getLine
          putStrLn $ "you said " ++ line