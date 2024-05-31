(define (count-change amount)
  ;; Call the cc function with the given amount and 5 kinds of coins
  (cc amount 5))

(define (cc amount kinds-of-coins)
  ;; Base case: If the amount is 0, there is only one way to make change (no coins)
  (cond ((= amount 0) 1)
        ;; If the amount is less than 0 or there are no more coin types, return 0
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        ;; Recursive case: Combine the number of ways to make change without using the current coin type
        ;; and the number of ways to make change using the current coin type
        (else (+ (cc amount (- kinds-of-coins 1))
                 (cc (- amount (first-denomination kinds-of-coins)) kinds-of-coins)))))

(define (first-denomination kinds-of-coins)
  ;; Return the value of the first coin denomination based on the number of coin types
  (cond ((= kinds-of-coins 1) 1)
        ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))