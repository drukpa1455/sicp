gcd' :: Int -> Int -> Int
gcd' a 0 = a
gcd' a b = gcd' b (a `mod` b)

main :: IO ()
main = do
    let result = gcd' 206 40
    putStrLn $ "GCD(206, 40) = " ++ show result