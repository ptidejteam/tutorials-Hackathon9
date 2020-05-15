"use strict";
exports.__esModule = true;
var MyString = /** @class */ (function () {
    function MyString(String1, String2) {
        this.s1 = String1;
        this.s2 = String2;
    }
    return MyString;
}());
var Strings = new MyString('Hello People', 'Hello Friends');
console.log('MyString Task:');
console.log("is " + Strings.s1 + " equal to " + Strings.s2 + "?");
console.log(Strings.s1 === Strings.s2, '\n');
//MyPerson Task
var myPerson = /** @class */ (function () {
    function myPerson(pName, pAge, pSon) {
        this.name = pName;
        this.age = pAge;
        this.son = pSon;
    }
    return myPerson;
}());
var Jane = new myPerson("Jane", 47, [["John", "Sam"], [15, 17]]);
var Sue = new myPerson("Sue", 35, [["John"], [15]]);
console.log('MyPerson Task:');
console.log(Jane.name + ' is ' + Jane.age + ' and has sons ' + Jane.son[0][0] + ' and ' + Jane.son[0][1] +
    ' who are ' + Jane.son[1][0] + ' and ' + Jane.son[1][1]);
console.log(Sue.name + ' is ' + Sue.age + ' and has a son ' + Sue.son[0][0] +
    ' who is ' + Sue.son[1][0] + '\n');
//Float Vlues Task
console.log('Float Vlues Comparison Task:');
var f1;
var f2;
function addFloat(f1) {
    for (var i = 0; i < 10; i++) {
        f1 += .1;
    }
    console.log(f1);
}
addFloat(.0);
function multiplyFloat(f2) {
    f2 *= 10;
    console.log(f2);
}
multiplyFloat(.1);
var threshold = .0001;
if (Math.abs(f1 - f2) < threshold) {
    console.log('f1 equals f2', '\n');
}
else {
    console.log('f1 does not equal f2', '\n');
}
//Fuction/Method Equality Task
console.log('Fuction/Method Equality Task:');
function roundDown(values) {
    return Math.floor(values);
}
var value1 = roundDown(29.99);
var value2 = roundDown(-29.99);
console.log('Firss value rounded down to ' + value1);
console.log("Second value rounded down to " + value2);
console.log('Does the first value equal the second?');
console.log(value1 == value2);
