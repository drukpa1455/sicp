main :: IO ()
main = do
    let result = (5 + 4 + (2 - (3 - (6 + (4 / 5))))) / (3 * (6 - 2) * (2 - 7))
    print result
