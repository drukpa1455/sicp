; Define the cube function
(define (cube x) (* x x x))

; Define the p function
(define (p x) (- (* 3 x) (* 4 (cube x))))

; Define the sine function
(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

; Evaluate (sine 12.15)
(sine 12.15)