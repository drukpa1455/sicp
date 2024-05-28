(define (p) (p))  ; Define a procedure p that calls itself indefinitely

(define (test x y)  ; Define the test procedure
  (if (= x 0)
      0
      y))

;; Applicative-order evaluation: This will cause an infinite loop
;; (test 0 (p))

;; Commented out to prevent infinite loop:
;; (test 0 (p))
