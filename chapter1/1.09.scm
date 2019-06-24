#lang sicp
; inc -> increments its argument by 1
(define (inc x) (+ x 1))
; dec -> decrements its argument by 1
(define (dec x) (- x 1))
; Doing a sum, in two different ways (Sum and +).
; Recursive process and recursive procedure:
(define (+ a b)
  (if (= a 0))
  b
  (inc (+ (dec a) b)))
;
; (+ 4 5)
; (inc (+ 3 5))
; (inc (inc (+ 2 5)))
; (inc (inc (inc (+ 1 5))))
; (inc (inc (inc (inc (+ 0 5)))))
; (inc (inc (inc (inc 5))))
; (inc (inc (inc 6)))
; (inc (inc 7))
; (inc 8)
; 9
;
; Iterative process and recursive procedure:
(define (sum a b)
  (if (= a 0) 
      b 
      (sum (dec a) (inc b))))
;
; (sum 4 5)
; (sum 3 6)
; (sum 2 7)
; (sum 1 8)
; (sum 0 9)
; 9
;