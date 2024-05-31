(defun fast-expt-iter (b n a)
  "Iterative exponentiation using successive squaring."
  (cond ((= n 0) a)
        ((evenp n) (fast-expt-iter (square b) (/ n 2) a))
        (t (fast-expt-iter b (- n 1) (* a b)))))

(defun square (x) (* x x))

(defun fast-expt (b n)
  "Compute b^n using logarithmic number of steps."
  (fast-expt-iter b n 1))