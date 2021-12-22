module Main where

import Funcs
import Lists

-- comment
{-
Multiline comment
:t to get func type
list is single linked
-}

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  Lists.exercises
  Funcs.exercises

{-
PENDING
* guards
* recursion
* lambdas
* type classes
* fib sequence
-}
