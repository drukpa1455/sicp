;; Expression evaluation in Scheme

;; Expression: 10
(display 10) (newline) ;; => 10

;; Expression: (+ 5 3 4)
(display (+ 5 3 4)) (newline) ;; => 12

;; Expression: (- 9 1)
(display (- 9 1)) (newline) ;; => 8

;; Expression: (/ 6 2)
(display (/ 6 2)) (newline) ;; => 3

;; Expression: (+ (* 2 4) (- 4 6))
(display (+ (* 2 4) (- 4 6))) (newline) ;; => 6

;; Define variables a and b
(define a 3)
(define b (+ a 1))

;; Expression: (+ a b (* a b))
(display (+ a b (* a b))) (newline) ;; => 19

;; Expression: (= a b)
(display (= a b)) (newline) ;; => #f

;; Expression: (if (and (> b a) (< b (* a b))) b a)
(display (if (and (> b a) (< b (* a b))) b a)) (newline) ;; => 4

;; Expression: (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
(display (cond ((= a 4) 6)
               ((= b 4) (+ 6 7 a))
               (else 25))) (newline) ;; => 16

;; Expression: (+ 2 (if (> b a) b a))
(display (+ 2 (if (> b a) b a))) (newline) ;; => 6

;; Expression: (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
(display (* (cond ((> a b) a)
                  ((< a b) b)
                  (else -1))
             (+ a 1))) (newline) ;; => 16
