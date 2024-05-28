(defun sum-of-squares-of-two-largest (a b c)
  "Return the sum of the squares of the two largest numbers among a, b, and c."
  (let* ((min-val (min a b c))  ; Find the smallest value
         (sum-of-squares (+ (* a a) (* b b) (* c c) 
                            (- (* min-val min-val))))) ; Subtract the square of the smallest value
    sum-of-squares))

;; Example usage:
(sum-of-squares-of-two-largest 3 2 1)  ; Should return 13
