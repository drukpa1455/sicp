double x = x * 2
halve x = x `div` 2

multiply a b
  | b == 0 = 0
  | even b = multiply (double a) (halve b)
  | otherwise = a + multiply a (b - 1)

main = do
  let a = 5
  let b = 7
  print $ "Multiplication of " ++ show a ++ " and " ++ show b ++ " is: " ++ show (multiply a b)