#lang sicp
(define (pascal row col)
  (cond ((< row col) 0) ; If Row is smaller than columns return cero.
  ((or (zero? row) (zero? col)) 1) ; If row or column is 0, then return 1! 
  (else(+ (pascal (- row 1) col) ; Else, we run the recursion
         (pascal (- row 1) (- col 1))))))
(define (zero? x)  (= x 0))
; Needs refactor and adding logic for printing all the triangle