module Funcs where

import Lists (exercises)

addMe x y = x + y

add3 = addMe 3

exercises = do
  putStrLn "\n**********FUNCTIONS***********\n"
  print "add 3 to 10 (currying and partial application)"
  print (add3 10)
