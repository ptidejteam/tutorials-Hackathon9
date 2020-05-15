Equality is hard - Scheme implementation
---

<!-- TOC -->

- [1. Learn scheme](#1-learn-scheme)
- [2. Run scheme](#2-run-scheme)
    - [2.1. How to run interactively](#21-how-to-run-interactively)
- [3. Testing the equality](#3-testing-the-equality)
    - [3.1. Some helper functions](#31-some-helper-functions)
    - [3.2. MyString](#32-mystring)
        - [3.2.1. Test for not equal](#321-test-for-not-equal)
        - [3.2.2. Test for equal](#322-test-for-equal)

<!-- /TOC -->

# 1. Learn scheme
<a id="markdown-Learn%20scheme" name="Learn%20scheme"></a>

A very good and simple scheme syntax documentation can be found at GNU Kawa project [here](https://www.gnu.org/software/kawa/tutorial/)

# 2. Run scheme
<a id="markdown-Run%20scheme" name="Run%20scheme"></a>

[Kawa](https://www.gnu.org/software/kawa): Using as a converter to convert scheme scripts to java, then run

## 2.1. How to run interactively
<a id="markdown-How%20to%20run%20interactively" name="How%20to%20run%20interactively"></a>

```shell
cd .\scheme\lib\
java -jar .\kawa.jar
```

# 3. Testing the equality
<a id="markdown-Testing%20the%20equality" name="Testing%20the%20equality"></a>

## 3.1. Some helper functions
<a id="markdown-Some%20helper%20functions" name="Some%20helper%20functions"></a>

1. Define a new instance of a class

```scheme
; define new-instance
(define (new-instance class . parameters)
  (apply class parameters))
```

Usage

```scheme
(define instance_name (new-instance class_name parameter_list_with_space))
```

2. To call a method inside a class

```scheme
; define send message
(define (send message object . args)
  (let ((method (object message)))
    (cond ((procedure? method) (apply method args))
          (else (error "Error in method lookup " method)))))
```

Usage

```scheme
(send 'method_name instance_name)
```

## 3.2. MyString
<a id="markdown-MyString" name="MyString"></a>

MyString is an object with some variable inside. In java, MyString could be create by the following code

```java
class MyString {
    private String someField;

    public MyString(String someField) {
        this.someField = someField;
    }

    public String getSomeField() {
        return this.someField;
    }
}
```

To have the same "class" in Scheme

```scheme
(define (MyString someField)
  (let ((someField someField))
  (define (getSomeField) someField)

  (define (type-of) 'MyString)
  
  (define (self message)
    (cond ((eqv? message 'getSomeField) getSomeField)
          ((eqv? message 'type-of) type-of)
    (else (error "Undefined message" message))))
self))
```

### 3.2.1. Test for not equal
<a id="markdown-Test%20for%20not%20equal" name="Test%20for%20not%20equal"></a>

Now to test for the equality, we should test for _**not equal**_ first to get the basic implementation of the programming language

1. Create 2 different MyString object

```scheme
(define myString1 (new-instance MyString "test"))
(define myString2 (new-instance MyString "test2"))
```

2. Test created objects

```scheme
(send 'getSomeField myString1)
; ressult: test

(send 'getSomeField myString2)
; result: test2
```

3. Test with scheme equal functions

```scheme
; Test 0: = operator
(= myString1 myString2)
; result: bad value for numeric compare
; explanation:
; = operator only use to compare numeric value. Anything else will raise error

; Test 1: eq?
(eq? myString1 myString2)
; result: #f => FALSE
; explanation
; eq? is used to check whether its two parameters respresent the same object in memory

; Test 2: eqv?
(eqv? myString1 myString2)
; result: #f => FALSE

; Test 3: equal?
(equal? myString1 myString2)
; result: #f => FALSE

```

### 3.2.2. Test for equal
<a id="markdown-Test%20for%20equal" name="Test%20for%20equal"></a>

You need to type `(exit)` to exit the current interactive mode and start a new session

```scheme
(define myString1 (new-instance MyString "test"))
(define myString2 (new-instance MyString "test"))

(send 'getSomeField myString1)
(send 'getSomeField myString2)

; Test 1: eq?
(eq? myString1 myString2)
; result: #f => FALSE
; explanation
; eq? is used to check whether its two parameters respresent the same object in memory

; Test 2: eqv? is the same as eq?, except for primitive values
(eqv? myString1 myString2)
; result: #f => FALSE

; Test 3: equal? check for structural equality
(equal? myString1 myString2)
; result: #f => FALSE
```