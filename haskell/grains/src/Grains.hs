module Grains (square, total) where


square :: Integer -> Maybe Integer
square n = if n > 64 || n < 1
  then Nothing
  else Just (2 ^ (n - 1))

total' :: Integer -> Integer
total' 1 = 1
total' x = case (square x) of
  Nothing -> 0
  Just sq -> sq + (total' (x - 1))

total :: Integer
total = total' 64
