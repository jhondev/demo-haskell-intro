module Main where

import Funcs
import Impure
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
  putStrLn "\n**********IMPURE AND INTERACTIVE FUNCTIONS*********\n"
  -- (x, y) <- Impure.act
  -- putStrLn ("You entered X: " ++ x ++ " and Y: " ++ y ++ " \n")
  -- Impure.strlen
  Impure.hangman

{-
PENDING
* recursion
* lambdas
* type classes
* fib sequence
* pattern matching in funcs
-}
