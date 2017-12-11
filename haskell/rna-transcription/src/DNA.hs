module DNA (toRNA) where
import Data.List

isValid :: String -> Bool
isValid x = (length difference) == 0
    where difference = (nub x) \\ "GCTA"

transcribeLetter :: Char -> Char
transcribeLetter x = case x of
    'G' -> 'C'
    'C' -> 'G'
    'T' -> 'A'
    'A' -> 'U'

toRNA :: String -> Maybe String
toRNA xs = if isValid xs
    then Just (map transcribeLetter xs)
    else Nothing
