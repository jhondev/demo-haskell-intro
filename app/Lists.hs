module Lists where

exercises = do
  putStrLn "\n**********LISTS************\n"

  let list = [1 .. 5]
  print list

  putStrLn "\nhead"
  print (head list)

  putStrLn "\ntail"
  print (tail list)

  putStrLn "\nnth"
  print (list !! 2)

  putStrLn "\nfirst 3 elements"
  print (take 3 list)

  putStrLn "\ndrop first 3 elements"
  print (drop 3 list)

  putStrLn "\nsum"
  print (sum list)

  putStrLn "\npow3List"
  print ([3 ^ n | n <- list])

  putStrLn "\nappend 2 list"
  print (list ++ [8, 9])

  putStrLn "\nlist comprehensions powList"
  let powList = [x ^ 2 | x <- list]
  print powList

  putStrLn "\nlist comprehensions with dependant generators doublePowList"
  let doublePowList = [(x ^ 2, y ^ 2) | x <- list, y <- [x, 20, 30]]
  print doublePowList

  putStrLn "\nlist comprehensions with guards"
  let guardFunc = [x | x <- [1 .. 10], even x]
  print guardFunc

  putStrLn "\nzip list"
  let zipped = zip list ['a', 'b', 'c']
  print zipped

  let pairs xs = zip xs (tail xs)
  putStrLn "\nis list sorted?"
  let sorted xs = and [x <= y | (x, y) <- pairs xs]
  print (sorted list)