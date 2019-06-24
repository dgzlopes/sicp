#lang sicp
; What behavior can we observe with an interpreter that uses applicative-order
; evaluation? And with a normal-order one?
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))
; With the applicative-order one, we would try to evaluate p, but
; as it is a recursive non ending function, it would trap us on a
; never ending loop. On the other hand, with normal-order, the
; interpreter won't evaluate the p value! And just returning 0.