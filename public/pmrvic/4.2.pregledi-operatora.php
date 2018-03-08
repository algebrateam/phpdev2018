<?php

echo(2 + 3 * 4).'<br>';
echo(2 + 3) * 4;
echo '<hr>';
echo '1%1=';
echo 1 % 1;
echo '<br>';
echo '7%5=';
echo 7 % 5;

echo '<br>';
echo '37%4=';
echo 37 % 4;
echo '<hr>';
$brojevi = [1, 2, 3, 4, 5, 6, 66, 666, 99996352, 77, 777, 7, 8, 9, 10];
foreach ($brojevi as $value) {
    if ($value % 2 == 1) {
        echo $value.' je neparan broj <br>';
    } else {
        echo $value.' je paran broj <br>';
    }
}
echo '<hr>';

$var = 25;
echo 'var je ='.$var;
echo 'uvećani var je ='.$var++;  //$var=$var+1;
echo 'siguno uvećani var je ='.$var;
echo '<hr>';
$var = 25;
echo 'var je ='.$var;
echo 'uvećani var je ='.++$var;  //$var=$var+1;
echo 'siguno uvećani var je ='.$var;

echo '<hr>';

$a = 1.0;
$b = 1;
if ($a == $b) {
    echo 'varijable su iste';
} else {
    echo 'varijable nisu iste';
}
if ($a === $b) {
    echo 'varijable su indenticne';
} else {
    echo 'varijable nisu indenticne';
    echo '<br>a='.gettype($a).' != b='.gettype($b);
}

$a = 56;
$b = 56;

if ($a >= $b) {
    echo ' <br>a je veće ili jednako od b';
} else {
     echo ' <br>a nije veće od b';
 }

$a = 5;

if ($a > 0 && $a < 6) {
    echo '<br> broj a je strogo veće od nula i strogo manje od 6';
}
