(defun fib-matrix-mult (p q)
  "Compute the transformation T_pq applied twice"
  (let ((p-prime (+ (* p p) (* q q)))
        (q-prime (+ (* 2 p q) (* q q))))
    (values p-prime q-prime)))

(defun fib-fast (n)
  "Compute the nth Fibonacci number in logarithmic time"
  (labels ((fib-iter (a b p q count)
             (cond ((= count 0) b)
                   ((evenp count)
                    (multiple-value-bind (p-prime q-prime)
                        (fib-matrix-mult p q)
                      (fib-iter a b p-prime q-prime (/ count 2))))
                   (t (fib-iter (+ (* b q) (* a q) (* a p))
                                (+ (* b p) (* a q))
                                p q (- count 1))))))
    (fib-iter 1 0 0 1 n)))