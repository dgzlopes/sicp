#lang sicp
; What happends with this new attemp for computing square roots?
; The new square-root program:
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 2.0 x))

(define (square x)
  (* x x))

(define (new-if predicate 
                then-clause 
                else-clause)
  (cond (predicate then-clause)
        (else else-clause))) ; <---- Infinite Loop
; Being this an applicative-order interpreter, It will evaluate the else clause
; inside the cond statement leading to an infinite recursion loop.