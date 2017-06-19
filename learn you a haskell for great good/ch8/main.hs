import Data.Char

-- main = do
--   line <- getLine
--   if null line
--     then return ()
--     else do
--       putStrLn $ reverseWords line
--       main

-- reverseWords :: String -> String
-- reverseWords = unwords . map reverse . words

main :: IO()
main = putStrLn "hello, what is your name?"
       >> getLine
       >>= \name -> putStrLn ("hello, " ++ name ++ "!")