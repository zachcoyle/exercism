module Hamming (distance) where

compareLists :: String -> String -> [Bool]
compareLists xs ys = zipWith (\x y -> x /= y) xs ys

countDistance :: [Bool] -> Int
countDistance xs = length (filter id xs)

distance :: String -> String -> Maybe Int
distance xs ys = if length xs == length ys
    then Just (countDistance (compareLists xs ys))
    else Nothing

