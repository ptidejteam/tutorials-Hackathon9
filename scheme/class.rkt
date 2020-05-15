; MyString

(define (MyString someField)
  (let ((someField someField))
  (define (getSomeField) someField)

  (define (type-of) 'MyString)
  
  (define (self message)
    (cond ((eqv? message 'getSomeField) getSomeField)
          ((eqv? message 'type-of) type-of)
    (else (error "Undefined message" message))))
self))

; define new-instance
(define (new-instance class . parameters)
  (apply class parameters))

; define send message
(define (send message object . args)
  (let ((method (object message)))
    (cond ((procedure? method) (apply method args))
          (else (error "Error in method lookup " method)))))

; Test MyString
(define myString1 (new-instance MyString "test"))
(define myString2 (new-instance MyString "test"))

(send 'getSomeField myString1)
(send 'getSomeField myString2)

; Test 1: = operator
(= myString1 myString2)
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