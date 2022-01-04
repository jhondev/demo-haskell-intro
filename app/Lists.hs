module Lists where

exercises = do
  putStrLn "\n**********LISTS************\n"

  let list = [1 .. 5]
  print list

  print "head"
  print (head list)

  print "tail"
  print (tail list)

  print "nth"
  print (list !! 2)

  print "first 3 elements"
  print (take 3 list)

  print "drop first 3 elements"
  print (drop 3 list)

  print "sum"
  print (sum list)

  print "pow3List"
  print ([3 ^ n | n <- list])

  print "append 2 list"
  print (list ++ [8, 9])