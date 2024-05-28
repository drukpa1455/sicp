main :: IO ()
main = do
    let a = 3
    let b = a + 1

    print 10
    print (5 + 3 + 4)
    print (9 - 1)
    print (6 `div` 2)
    print (2 * 4 + (4 - 6))
    print (a + b + a * b)
    print (a == b)
    print (if b > a && b < a * b then b else a)
    print (if a == 4 then 6 else if b == 4 then 6 + 7 + a else 25)
    print (2 + if b > a then b else a)
    print ((if a > b then a else if a < b then b else -1) * (a + 1))
