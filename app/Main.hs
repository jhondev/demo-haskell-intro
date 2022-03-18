module Main where

import Funcs
import Impure
import Lists
import Recursion

-- comment
{-
Multiline comment
:t to get func type
list is single linked
-}

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  -- Lists.exercises
  -- Funcs.exercises
  -- putStrLn "\n**********IMPURE AND INTERACTIVE FUNCTIONS*********\n"
  -- Impure.hangman

  putStrLn "\n**********RECURSION*********\n"
  Recursion.factorialPtr 5

  putStrLn "\nEND"

{-
PENDING
* recursion
* fib sequence
-}
