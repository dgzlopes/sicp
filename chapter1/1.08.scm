#lang sicp
; Implement a cube-root procedure analogous to the square-root one
(define (crt-iter guess x)
  (if(good-enough? guess x)
     guess
     (crt-iter (improve guess x) x)))
(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))
(define (cube x)
  (* x x x))
(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (crt x)
  (crt-iter 1.0 x))
