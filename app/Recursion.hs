{-- TODO:
FP 8-9 - Recursion functions
- decide if all logical values in a list are true: and :: [Bool] -> Bool
- concatenate a list of lists: concat :: [[a]] -> [a]
- produce a list with n identical elements: replicate :: Int -> a -> [a]
- select the nth element of a list: (!!) :: [a] -> Int -> a
- decide if a value is an element of a list: elem :: Eq a => a -> [a] -> Bool
- Merge 2 sorted lists of values to give a single sorted list: merge :: Ord a => [a] -> [a] -> [a]
- quicksort using recursion

- how foldr howks?

FP 10 exercises

FP 11 How to think recursively

FP 12 recursive exercises
--}
module Recursion where

import Common

factorialPtr :: Int -> IO ()
factorialPtr num = do
  pln $ "Factorial of: " ++ show num
  pln $ "result: " ++ show (factorial num)

factorial :: Int -> Int
factorial 0 = 1
factorial num = num * factorial (num -1)

-- factorial num  =
--   let prev = num -1
--   let newTotal = total * prev
--   newSummary = summary ++ " * " ++ prev
--   factorial prev newTotal