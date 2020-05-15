(define (sample-function parameters)
    parameters)

(define a (sample-function 5))
(define b (sample-function 5))
(define c (sample-function 6))
(define d (sample-function 5))

a
b
c

(eq? a b)
(eqv? a b)
(equal? a b)
; true

(eq? a c)
(eqv? a c)
(equal? a c)
; false

(eq? (eq? a b) (eq? b a))
; true

(equal? 0.5 (exact->inexact 1/2))
; true

(equal? 0 "0")
; FALSE
(equal? 0 "")  
; FALSE
(equal? 0 0.000000000001)
; FALSE
(equal? 0 0.0000000000000000000000000000001)
; FALSE
(equal? 0 0.000000000000000000000000000000)  
; FALSE
(equal? 0.0 0.000000000000000000000000000000) 
; TRUE
(equal? 0.0 0.000000000000000000000000000001) 
; FALSE

(equal? a b)
(equal? b d)
(equal? a d)