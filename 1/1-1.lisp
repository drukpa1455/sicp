;; Expression evaluation in Common Lisp

;; Expression: 10
(print 10) ;; => 10

;; Expression: (+ 5 3 4)
(print (+ 5 3 4)) ;; => 12

;; Expression: (- 9 1)
(print (- 9 1)) ;; => 8

;; Expression: (/ 6 2)
(print (/ 6 2)) ;; => 3

;; Expression: (+ (* 2 4) (- 4 6))
(print (+ (* 2 4) (- 4 6))) ;; => 6

;; Define variables a and b
(defparameter a 3)
(defparameter b (+ a 1))

;; Expression: (+ a b (* a b))
(print (+ a b (* a b))) ;; => 19

;; Expression: (= a b)
(print (= a b)) ;; => NIL

;; Expression: (if (and (> b a) (< b (* a b))) b a)
(print (if (and (> b a) (< b (* a b))) b a)) ;; => 4

;; Expression: (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
(print (cond ((= a 4) 6)
             ((= b 4) (+ 6 7 a))
             (t 25))) ;; => 16

;; Expression: (+ 2 (if (> b a) b a))
(print (+ 2 (if (> b a) b a))) ;; => 6

;; Expression: (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
(print (* (cond ((> a b) a)
                ((< a b) b)
                (t -1))
           (+ a 1))) ;; => 16
