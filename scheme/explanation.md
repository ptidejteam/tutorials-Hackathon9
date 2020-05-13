# Learn scheme

A very good and simple scheme syntax documentation can be found at GNU Kawa project [here](https://www.gnu.org/software/kawa/tutorial/)

# Run scheme

[Kawa](https://www.gnu.org/software/kawa): Using as a converter to convert scheme scripts to java, then run

## How to run interactively

```shell
cd .\scheme\lib\
java -jar .\kawa.jar
```

# Testing the equality

## MyString

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

```
(define (MyString someField)
  (let ((someField someField))
  (define (getSomeField)
    someField)))
```