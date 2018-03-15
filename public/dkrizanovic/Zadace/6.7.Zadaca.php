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
echo '<br>';
echo '<hr>';
echo '2.Polju iz prethodnog zadatka promjenite ključeve tako da umjesto ključa 1 piše ime5, umjesto ključa2 ime4 itd.';
echo '<br>';
echo '<br>';
echo 'Rješenje';
//Zadatak 2
$polje = array();
$polje['ime5'] = 'Danijel';
$polje['ime4'] = 'Bela';
$polje['ime3'] = 'Predrag';
$polje['ime2'] = 'Ivan';
$polje['ime1'] = 'Marin';
foreach($polje as $ime);
{
    echo '<pre>';
    print_r($polje);
    echo '</pre>';
}
echo '<br>';
echo '<hr>';
echo '3.Posložite imena u polju iz prvog zadatka abecednim redom i ispišite vrijednost elemenata uz pomoć petlje for.';
echo '<br>';
echo '<br>';
$polje = array('Danijel', 'Bela', 'Predrag','Ivan','Marin');
for($i=0;$i<count($polje);$i++)
{
    sort($polje);
    echo " <br> $polje[$i]";
}
