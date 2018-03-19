<?php

// predaja parametara po referenci
function pot($a,$n=2){
  
  return $a ** $n;
}
function potencija(&$var, $n = 2)
{


    // prvi način
    // $var=pow($var,$n);

    // treći način
    $var = $var ** $n;

    // drugi način
  /*
  while($n>0){

    $var*=$var1;
    $n--;
  }*/
  //return $var;
}

$x = 3;
$y = 2;

//echo potencija($x,2);
potencija($x, 2);

potencija($y);

echo $x.'  y='.$y;
echo '<br>putem vrijednosti: '.pot($x);
echo '<br>x je još uvijek: '.$x;


$x=pot($x);
echo '<br>nova vrijednost od x je: '.$x;


