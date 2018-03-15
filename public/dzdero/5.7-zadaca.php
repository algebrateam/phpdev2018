<?php

echo 'Zadatak 1.<br>';
$a = 4;
$b = 2;
echo '$a'.' je '."$a".'<br>'.'$b'.' je '."$b".'<br>'.'Usporedi $a i $b'.'<br>';
if ($a < $b) {
    echo '$a je manji od $b';
} elseif ($a > $b) {
    echo '$a je veći od $b';
} else {
    echo '$a je jednak kao $b';
}
echo '<hr><br>';

echo 'Zadatak 2.<br>';
echo 'Ako je varijabla $a veća od $b uvećaj $a za 1 u suprotnom umanji $b za jedan <br>';
$a = 12;
$b = 3;
echo '$a = '."$a".'<br>$b = '."$b".'<br>';
if ($a > $b) {
    $a++;
} else {
    $b++;
} echo 'Rezultat: $a = '."$a".'; $b ='."$b";
echo '<hr><br>';

echo 'Zadatak 3.<br>Ispisi sve brojeve od 1-50 jedan ispod drugoga.<br>';
$a = 0;
while ($a < 50) {
    $a++;
    echo "$a".'<br>';
}
echo '<hr><br>';

echo 'Zadatak 4.<br>';
$zbroj = 0;
for ($a = 20; $a < 30; $a++) {
    //echo "$a, ";
    $zbroj += $a;

    //while($a){}
}echo 'Zbroj brojeva od 20 do 30 je '."$zbroj";
