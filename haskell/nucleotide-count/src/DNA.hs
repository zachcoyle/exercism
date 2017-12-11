module DNA (nucleotideCounts) where

import Data.Map (Map, fromList)
import Data.List
import Data.Either

isValid :: String -> Bool
isValid x =  length ((nub x) \\ "ACTG") == 0

mapFromNucleotides :: String -> (Map Char Int)
mapFromNucleotides xs = fromList (map (\x -> (head x, length x)) (group xs))

nucleotideCounts :: String -> Either String (Map Char Int)
nucleotideCounts xs = if isValid xs
    then Right (mapFromNucleotides xs)
    else Left xs
