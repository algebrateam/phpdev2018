<?php
echo '6.7 Zadaca za ponavljanje';
echo '<br>';
echo '<br>';
echo '1. Napišite program koji upisuje pet imena u polje $imena i ispisuje ih pomoću petlje foreach.';
echo '<br>';
echo '<br>';
echo 'Rješenje';
//Zadatak 1

$polje = array('Danijel', 'Bela', 'Predrag','Ivan','Marin');
foreach($polje as $ime)
{
    echo '<pre>';
    echo $ime;
    echo '</pre>';
}