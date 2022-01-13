module Impure where

import GHC.IO.Handle (hSetEcho)
import GHC.IO.Handle.FD (stdin)

act :: IO (String, String)
act = do
  putStrLn "X and Y"
  putStrLn "Enter x: "
  x <- getLine
  putStrLn "Enter y: "
  y <- getLine
  return (x, y)

strlen :: IO ()
strlen = do
  putStrLn "Enter a string: "
  xs <- getLine
  putStr "The string has "
  putStr (show (length xs))
  putStrLn " characters\n"

hangman :: IO ()
hangman = do
  putStrLn "HANGMAN GAME\n"
  putStrLn "Think of a word: "
  word <- sgetLine
  putStrLn "Try to guess it: "
  play word

sgetLine :: IO String
sgetLine = do
  x <- getCh
  if x == '\n'
    then do
      putChar x
      return []
    else do
      putChar '-'
      xs <- sgetLine
      return (x : xs)

getCh :: IO Char
getCh = do
  hSetEcho stdin False
  c <- getChar
  hSetEcho stdin True
  return c

play :: String -> IO ()
play word = do
  guess <- getLine
  if guess == word
    then putStrLn "You got it!"
    else do
      putStr "Match words: "
      putStrLn (match word guess)
      play word

match :: String -> String -> String
match xs ys =
  [if x `elem` ys then x else '-' | x <- xs]

-- TODO
-- FP 15