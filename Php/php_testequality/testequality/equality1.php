<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Equality1</title>

  </head>

  <body role="document">
  
<?php
//Reflexive-------------------------------
//String
$str1 = 'str1!';
if($str1==$str1){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
//Person
class Person{
    private $name="";
    public function Person($name) {
        $this->$name=$name;
    }
    public function getName(){
        return $this->name;
    }
}
$p1=new Person('P1');
if($p1==$p1){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
//float
$f1=1.3;
if($f1==$f1){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
//
//
//Symmetric-------------------------------
//String
$str2 = 'str1!';
if($str1==$str2){
    if($str2==$str1){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";
//Person
$p2=new Person('P1');
if($p1==$p2){
    if($p2==$p1){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";
//float
$f2=1.3;
if($f1==$f2){
    if($f2==$f1){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";
//Transitive-------------------------------
//String
$str3 = 'str1!';
if($str1==$str2){
    if($str2==$str3){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";
//Person
$p3=new Person('P1');
if($p1==$p2){
    if($p2==$p3){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";

//
//float
$f3=1.3;
if($f1==$f2){
    if($f2==$f3){
        echo 'true';
    }
    else{
        echo 'false';
    }
}
else{
    echo 'false';
}
echo "</br>";
?>
  </body>
</html>