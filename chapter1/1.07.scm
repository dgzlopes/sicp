#lang sicp
(define (sqrt-iter guess previous-guess x)
  (if (good-enough? guess previous-guess)
      guess
      (sqrt-iter (improve guess x) guess x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess previous-guess)
  (< (abs (- guess previous-guess)) 0.001))

(define (square x)
  (* x x))

(define (sqrt x)
  (sqrt-iter 1.0 0 x))
; A) Just trying (sqrt 0.001) makes our code return a wrong answer!
; Instead of 0.0314 that is what we expect, we get 0.0412.
; The reason is that as we refine the guess we stop when
; the square of guess is whithin 0.001 of x.
; B) With big numbers like (sqrt 99999999999999) the interpreter doesn't return a value.
; Interesting Link: http://www.volkerschatz.com/science/float.html
; As floating-pint numbers get larger, the representation becomes less precise! That's why
; our tolerance stops working and we never come to see a good enough guess.
; C) In our new implementation, we take the previous-guess as a parameter, and
; we use it in good-enough? for the new guess checking method.