(defun pascal (row col)
  "Compute an element of Pascal's triangle recursively."
  (cond ((= col 0) 1)           ; Base case: leftmost element is always 1
        ((= col row) 1)         ; Base case: rightmost element is always 1
        (t (+ (pascal (- row 1) (- col 1))   ; Recursive case: sum of two elements
              (pascal (- row 1) col)))))     ; from previous row