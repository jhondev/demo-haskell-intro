module Funcs where

import Lists (exercises)

addMe x y = x + y

add3 = addMe 3

exercises = do
  let list = [1 .. 5]
  putStrLn "\n**********FUNCTIONS***********\n"
  print "add 3 to 10 (currying and partial application)"
  print (add3 10)

  print "Average"
  let average ns = sum ns `div` length ns
  print (average list)

  print "Guarded Equation"
  let signum n
        | n < 0 = -1
        | n == 0 = 0
        | otherwise = 1
  print (signum (-10))

  print "Lambda"
  let lambda = \x -> if x > 0 then "good" else "bad"
  print (lambda 10)

  print "Operator Sections add 4 to 10"
  let opAdd4 x = (+) 4 x
  print (opAdd4 10)