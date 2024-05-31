; φ (phi) is the golden ratio, approximately 1.618. It is used because of its relation to the Fibonacci sequence.
(defconstant phi (/ (+ 1 (sqrt 5)) 2))

; ψ (psi) is the negative reciprocal of φ, approximately -0.618. It is used in the proof to simplify the expression.
(defconstant psi (/ (- 1 (sqrt 5)) 2))

; Define the Fibonacci function using the formula Fib(n) = (φ^n - ψ^n) / √5
(defun fib (n)
  (/ (- (expt phi n) (expt psi n)) (sqrt 5)))

; Test the function
(format t "Fib(10) = ~a~%" (fib 10))