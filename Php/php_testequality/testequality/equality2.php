<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Equality2</title>

  </head>

  <body role="document">
  
<?php
//Reflexive-------------------------------
//String
$str1 = '1.3';
$str2 = '1.3';
//
//Float
$f1=1.3;
$f2=1.3;

//compare String with String
if($str1==$str2){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
//compare String with Float by ==
if($str1==$f1){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
//
//compare String with Float by ===
if($str1===$f1){
    echo 'true';
}
else{
    echo 'false';
}
echo "</br>";
?>
  </body>
</html>