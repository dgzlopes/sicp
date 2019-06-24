#lang sicp
; This one is a mathematical function called Ackermann’s function:
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) ; <-- Double recursion
                 (A x (- y 1))))))
; What are the values of the following expressions? 
; (A 1 10) -> 1024
; (A 2 4) -> 65536
; (A 3 3) -> 65536
; Give concise mathematical definitions for the functions computed by the procedures
; f, g, and h for positive integer values of n:
(define (f n) (A 0 n)) ; 2n multiplication (repeated addition)
(define (g n) (A 1 n)) ; 2^n exponentiation (repeated multiplication)
(define (h n) (A 2 n)) ; 2^n^n also called tetration (repeated exponentiation)
