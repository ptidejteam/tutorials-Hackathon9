; MyString

(define (MyString someField)
  (let ((someField someField))
  (define (getSomeField)
    someField)))

; Test MyString
(define myString1 (MyString "test"))
(define myString2 (MyString "test2"))

; Test 1: = operator
(= myString1 myString1)
; result: bad value for numeric compare
; explanation:
; = operator only use to compare numeric value. Anything else will raise error

; Test 2: eqv?
(eqv? myString1 myString2)
; result: #t => TRUE

; Test 3: equal?
(equal? myString1 myString2)
; result: #t => TRUE

; Test 4: equal?
(eq? myString1 myString2)
; result: #t => TRUE
; explanation
; eq? is used to check wherether its two parameters respresent the same object in memory

; From this answer in stackoverflow: https://stackoverflow.com/a/17719745/4506315