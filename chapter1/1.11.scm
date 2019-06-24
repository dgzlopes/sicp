#lang sicp
; This version computes f by means of a recursive process:
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))
; On the other hand, this version computes f by means of an iterative process:
(define (fi n)
  (define (iter x y z count)
    (if (= count 0)
        x
        (iter y z (+ z (* 2 y) (* 3 x)) (- count 1))))
  (iter 0 1 2 n))