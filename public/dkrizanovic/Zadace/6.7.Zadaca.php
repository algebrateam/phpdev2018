<?php

echo '6.7 Zadaca za ponavljanje';
echo '<br>';
echo '<br>';
echo '1. Napišite program koji upisuje pet imena u polje $imena i ispisuje ih pomoću petlje foreach.';
echo '<br>';
echo '<br>';
echo 'Rješenje';
//Zadatak 1
$polje = array('Danijel', 'Bela', 'Predrag', 'Ivan', 'Marin');
foreach ($polje as $ime) {
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
foreach ($polje as $kljuc => $ime) {
    echo '<pre>';
    echo $kljuc . "=>" . $ime . "</br>";
    echo '</pre>';
}
echo '<br>';
echo '<hr>';
echo '3.Posložite imena u polju iz prvog zadatka abecednim redom i ispišite vrijednost elemenata uz pomoć petlje for.';
echo '<br>';
echo '<br>';
//Zadatak 3
$polje = array('Danijel', 'Bela', 'Predrag', 'Ivan', 'Marin');
for ($i = 0; $i < count($polje); $i++) {
    sort($polje);
    echo " <br> $polje[$i]";
}
echo '<br>';
echo '<hr>';
echo '4.Položite ključeve u polju abecednim redom i ispišite vrijednosti elemenata zajedno s pripadajućim ključevima s pomoću petlje foreach';
echo '<br>';
echo '<br>';
//Zadatak 4
$polje = array();
$polje['ime5'] = 'Danijel';
$polje['ime4'] = 'Bela';
$polje['ime3'] = 'Predrag';
$polje['ime2'] = 'Ivan';
$polje['ime1'] = 'Marin';
ksort($polje);
foreach ($polje as $kljuc => $ime) {
    echo $kljuc . "=>" . $ime . "</br>";
}
echo '<br>';
echo '<hr>';
echo '5. Napišite program koji će s pomoću petlje for automatski stvoriti polje brojeva od 1 do 100 te s petljom foreach ispisati sadržaj polja';
echo '<br>';
echo '<br>';
//Zadatak 5
$polje = array();
for ($i = 1; $i <= 100; $i++) {
    $polje[] = $i;
}
foreach ($polje as $broj) {
    echo "<br>$broj";
}
echo '<pre>';
print_r($polje);
echo '</pre>';
