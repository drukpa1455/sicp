-- Function to compute the transformation T_pq applied twice
fibMatrixMult :: (Int, Int) -> (Int, Int)
fibMatrixMult (p, q) = (p * p + q * q, 2 * p * q + q * q)

-- Function to compute the nth Fibonacci number in logarithmic time
fibFast :: Int -> Int
fibFast n = fibIter 1 0 0 1 n
  where
    fibIter a b p q count
      | count == 0 = b
      | even count = fibIter a b p' q' (count `div` 2)
      | otherwise  = fibIter (b * q + a * q + a * p) (b * p + a * q) p q (count - 1)
      where
        (p', q') = fibMatrixMult (p, q)

main :: IO ()
main = do
  putStrLn "Enter the value of n: "
  n <- readLn
  putStrLn $ "The " ++ show n ++ "th Fibonacci number is: " ++ show (fibFast n)