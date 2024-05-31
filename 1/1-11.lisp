; Recursive process
(defun f-recursive (n)
  (cond 
    ((< n 3) n)  ; base case: if n < 3, return n
    (t (+ (f-recursive (- n 1))  ; recursive case: if n >= 3, compute f(n-1)
          (* 2 (f-recursive (- n 2)))  ; compute 2 * f(n-2)
          (* 3 (f-recursive (- n 3)))))))  ; compute 3 * f(n-3) and sum the results

; Iterative process
(defun f-iterative (n)
  (if (< n 3)
      n  ; base case: if n < 3, return n
      (f-iter 2 1 0 (- n 2))))  ; start the iterative process with initial values

(defun f-iter (a b c count)
  (if (= count 0)
      a  ; base case: if count reaches 0, return the value of a
      (f-iter (+ a (* 2 b) (* 3 c))  ; compute the next value of a
              a  ; update b to the previous value of a
              b  ; update c to the previous value of b
              (- count 1))))  ; decrement the count