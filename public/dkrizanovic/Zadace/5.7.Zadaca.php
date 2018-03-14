<?php

//Zadatak 1

echo 'Zadatak 1';
echo '<br>';
echo '<br>';
echo 'Varijabla a je 4 a varijabla b je 2';
echo '<br>';
$a = 4;
$b = 2;

if ($a > $b) {
    echo "Varijabla $a je veća od varijable $b";
} else {
    echo "Varijabla $a je manja od varijable $b";
}
echo '<br>';
echo '<hr>';
//Zadatak 2
echo 'Zadatak 2';
echo '<br>';
echo '<br>';
echo 'Varijabla a je 40, a varijabla b je 150';
echo '<br>';
$a = 40;
$b = 150;
if ($a > $b) {
    $a++;
}
if ($a < $b) {
    $a--;
}
echo '<br>';
echo "Krajnja vrijednost varijabli je: a=$a, b=$b";
echo '<br>';
echo '<hr>';
//Zadatak 3
echo 'Zadatak 3';
echo '<br>';
echo '<br>';
$i = 1;
while ($i <= 50) {
    echo "<br>$i";
    $i++;
}
echo '<hr>';
//Zadatak 4
echo'Zadatak 4';
echo '<br>';
echo '<br>';
$zbroj = 0;
for ($i = 20; $i <= 30; $i++) {
    $zbroj += $i;
}
echo "Zbroj brojeva od 20 do 30 je $zbroj";
