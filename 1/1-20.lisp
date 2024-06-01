(defun gcd (a b)
  "Computes the greatest common divisor of a and b using Euclid's algorithm."
  (if (= b 0)
      a
      (gcd b (rem a b))))