module LeapYear (isLeapYear) where

isDivisible :: Integer -> Integer -> Bool
isDivisible x y = (mod x y) == 0

isLeapYear' :: [Bool] -> Bool
isLeapYear' [False, _, _] = False
isLeapYear' [_, True, False] = False
isLeapYear' [_, _, _] = True

isLeapYear :: Integer -> Bool
isLeapYear year =
  isLeapYear' years
  where years = map (isDivisible year) [4, 100, 400]
