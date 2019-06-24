#lang sicp
; Define a procedure that takes three numbers as arguments and returns
; the sum of the squares of the two larger numbers.
(define (sumsq x y z)
  (cond ((and (> x y) (> x z)) (if (> y z) (+ (* x x) (* y y)) (+ (* x x) (* z z)))) ; If X is the biggest
        ((> x y) (+ (* x x) (* y y))) ; If X is larger than Y or Z
        (else (+ (* y y) (* z z))) ; If X is smaller than Y and Z
    ))
