{-# LANGUAGE FlexibleInstances #-}

module Common where

data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float,
    phoneNumber :: String,
    flavor :: String
  }
  deriving (Show)

class Console a where
  pln :: a -> IO ()

instance Console String where
  pln text = putStrLn text