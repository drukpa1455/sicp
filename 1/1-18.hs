multiply :: Int -> Int -> Int
multiply a 0 = 0
multiply a b
    | even b    = 2 * multiply a (b `div` 2)
    | otherwise = a + multiply a (b - 1)

main :: IO ()
main = do
    let result = multiply 5 7
    putStrLn $ "Result: " ++ show result