<?php

$polje = ['Tesla', 'Edison', 'Bell'];
echo $polje[0];
echo '<br>';
echo $polje[1];
echo '<br>';
echo $polje[2];

echo '<hr>';
echo 'VJEZBA 3.3';
echo '<br>', '<br>';

$A = 1;
$B = 4;
$C = 9;
echo "$A"."$B"."$C";
echo '<hr>';

$a = 3;
$b = 5;
$pom = $a; //sacuvao sam 3 i oslobodio $a
$a = $b; //$a je sada 5
$b = $pom; //$b punim sa sacuvanom 3

echo "a je $a";
echo '<br>';
echo "b je $b";

echo '<hr>';

$ime = 'Domagoj Ždero';
echo $ime;
