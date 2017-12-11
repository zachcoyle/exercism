module Pangram (isPangram) where
import Data.List
import Data.Char

isPangram :: String -> Bool
isPangram text = length (['a'..'z'] \\ (map toLower text)) == 0
