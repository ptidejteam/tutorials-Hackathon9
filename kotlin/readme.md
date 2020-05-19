#Kotlin equals analysis

##Copy and paste the code below to:
[Heading link](https://www.jdoodle.com/compile-kotlin-online/ "https://www.jdoodle.com/compile-kotlin-online/")

```kotlin
fun main(args: Array<String>) {
    
    println("2" == "2") //true
    println("2" === "2") //true
    println(2 == 2) //true
    println(2 === 2) //true - Identity equality for arguments of types Int and Int is deprecated.
    println(0.1 == 0.1) //true
    println(0.1 === 0.1) //true - Identity equality for arguments of types Double and Double is deprecated.
    //println("2" == 2.1) //error
    //println(2 == 2.1) //error
    
    //Reflexive - MyString
    println("Reflexive - MyString:")
    
    var a: String
    a = "test"
    println(a == a) //true
    println(a === a) //true
    
    var b: String
    b = "test"
    println(a == b) //true
    println(a === b) //true 
    //--
    
    //Reflexive - Person
    println("Reflexive - Person:")
    
    class Person(var name: String, var age: Int, var son: Person?) { }
    
    var jane = Person("Jane", 25, Person("John", 15, null))
    var sue = Person("Sue", 22, Person("John", 15, null))
    println(jane.son == sue.son) //false
    println(jane.son === sue.son) //false
    
    var john = Person("John", 15, null)
    var jane1 = Person("Jane", 25, john)
    var sue1 = Person("Sue", 22, john)
    println(jane1.son == sue1.son) //true
    println(jane1.son === sue1.son) //true
    //--
    
    //Reflexive - Some float
    println("Reflexive - Some float:")
    
    var f1: Float = 0.1f
    println(f1 == f1) //true
    println(f1 === f1) //true - identity equality for arguments of types Float and Float is deprecated
    
    var f2: Float = 0.1f
    println(f1 == f2) //true
    println(f1 === f2) //true - identity equality for arguments of types Float and Float is deprecated
    //---
    
    //Symmetric - MyString
    println("Symmetric - MyString:")
    class MyString(var s: String) { }
    
    var s1 = MyString("aa")
    var s2 = MyString("aa")
    println(s1 == s2) //false
    println(s1 === s2) //false
    println(s2 == s1) //false
    println(s2 === s1) //false
    //--
    
    //Symmetric - Person
    println("Symmetric - Person:")
    
    class PersonA(var name: String, var age: Int, var son: PersonA?) { }
    
    var person1 = PersonA("Sue", 22, PersonA("John", 15, null))
    var person2 = PersonA("Sue", 22, PersonA("John", 15, null))
    println(person1 == person2) //false
    println(person2 === person1) //false
    //---
    
    //Symmetric - Some float
    println("Symmetric - Some float:")
    
    var f19: Float = 0.199999999999f
    var f29: Float = 0.199999999999f
    
    println(f19 == f29) //true
    println(f19 === f29) //true* - identity equality for arguments of types Float and Float is deprecated
    
    println(f29 == f19) //true
    println(f29 === f19) //true* - identity equality for arguments of types Float and Float is deprecated
    //---
    
    //Transitive - MyString
    println("Transitive - MyString:")
    
    var at: String = "test"
    var bt: String = "test"
    var ct: String = "test"
    
    println(at == bt) //true
    println(bt == ct) //true
    println(ct == at) //true
    
    println(at === bt) //true
    println(bt === ct) //true
    println(ct === at) //true
    //---
    
    //Transitive - Person
    println("Transitive - Person:")
    
    class PersonB(var name: String, var age: Int, var son: PersonB?) { }
    
    var personB1 = PersonB("Sue", 22, PersonB("John", 15, null))
    var personB2 = PersonB("Sue", 22, PersonB("John", 15, null))
    var personB3 = PersonB("Sue", 22, PersonB("John", 15, null))
    println(personB1 == personB2) //false
    println(personB2 == personB3) //false
    println(personB3 == personB1) //false
    
    println(personB1 === personB2) //false
    println(personB2 === personB3) //false
    println(personB3 === personB1) //false
    //---
    
    //Transitive - Some float
    println("Transitive - Some float:")
    
    var ft1: Float = 0.199999999999f
    var ft2: Float = 0.199999999999f
    var ft3: Float = 0.199999999999f
    
    println(ft1 == ft2) //true
    println(ft2 == ft3) //true
    println(ft3 == ft1) //true
    
    println(ft1 === ft2) //true*
    println(ft2 === ft3) //true*
    println(ft3 === ft1) //true*
    
    //* identity equality for arguments of types Float and Float is deprecated
    //---
    
}
```