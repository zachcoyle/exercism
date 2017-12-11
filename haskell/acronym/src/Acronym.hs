module Acronym (abbreviate) where

import Data.List
import Data.Char

abbreviate :: String -> String
abbreviate xs = map ( toUpper . head ) wordList
    where wordList = words xs
