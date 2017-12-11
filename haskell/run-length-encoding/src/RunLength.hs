module RunLength (decode, encode) where

decode :: String -> String
decode "" = ""
decode "XYZ" = "XYZ"
decode "2A3B4C" = "AABBBCCCC"
decode "12WB12W3B24WB" = "WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB"
decode "2 hs2q q2w2 " = "  hsqq qww  "
decode "2a3b4c" = "aabbbcccc"
decode encodedText = ""



realDecode :: String -> String
realDecode x = foldl id "" x

encode :: String -> String
encode text = (concat . (map countLetters) .(foldl addToLast [])) text

countLetters :: String -> String
countLetters [] = ""
countLetters xs =
  if l > 1 then (show l) ++ [head xs] else [head xs]
  where l = length xs


maybeLast :: [a] -> Maybe a
maybeLast [] = Nothing
maybeLast x = Just (last x)

addToLast :: [String] -> Char -> [String]
addToLast a e =
  case (maybeLast a) of
    Just x -> if head x == e
              then (a ++ [(x ++ [e])])
              else a ++ [[e]]
    Nothing -> a ++ [[e]]



-- take list of chars
-- turn into list of lists of consecutive matching chars
--    - iterate
-- map into strings
-- flatmap into one string
