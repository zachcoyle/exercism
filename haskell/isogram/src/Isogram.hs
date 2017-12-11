module Isogram (isIsogram) where

import Data.Set (Set)
import qualified Data.Set as Set

strip :: String -> String
strip s = filter (\x -> notElem x ['-', ' ']) s

isIsogram :: String -> Bool
isIsogram s = stripped
  where stripped = strip s
