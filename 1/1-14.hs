firstDenomination :: Int -> Int
firstDenomination kindsOfCoins
    | kindsOfCoins == 1 = 1
    | kindsOfCoins == 2 = 5
    | kindsOfCoins == 3 = 10
    | kindsOfCoins == 4 = 25
    | kindsOfCoins == 5 = 50
    | otherwise = 0

cc :: Int -> Int -> Int
cc amount kindsOfCoins
    | amount == 0 = 1
    | amount < 0 || kindsOfCoins == 0 = 0
    | otherwise = cc amount (kindsOfCoins - 1) + cc (amount - firstDenomination kindsOfCoins) kindsOfCoins

countChange :: Int -> Int
countChange amount = cc amount 5

main :: IO ()
main = do
    let amount = 11
    let ways = countChange amount
    putStrLn $ "Number of ways to make change for " ++ show amount ++ " cents: " ++ show ways