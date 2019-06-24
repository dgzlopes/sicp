#lang sicp
; Describe the behavior of the following procedure:
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; If b is bigger than 0 then we use the sum operator with a and b.