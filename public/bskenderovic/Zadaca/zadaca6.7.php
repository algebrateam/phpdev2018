<?php

echo '6.7';
echo '<br>';
echo '<br>';
echo 'Zadatak 1.';
echo '<br>';
echo '<br>';

$polje=array('Luka','Danijela','David','Marko','Dario');

foreach ($polje as $ime){
    echo '<pre>';
    echo $ime.'</br>';
    echo '</pre>';
}

echo '<br>';
echo '<hr>';
echo 'Zadatak 2.';
echo '<br>';
echo '<br>';

$polje = array();
$polje['ime5'] = 'Luka';
$polje['ime4'] = 'Danijela';
$polje['ime3'] = 'David';
$polje['ime2'] = 'Marko';
$polje['ime1'] = 'Dario';
foreach ($polje as $key => $ime) {
    echo '<pre>';
    echo $key . "=>" . $ime . "</br>";
    echo '</pre>';
}
echo '<br>';
echo '<hr>';
echo 'Zadatak 3.';
echo '<br>';
echo '<br>';

$polje=array('Luka','Danijela','David','Marko','Dario');

sort($polje);

for ($i = 0; $i < count($polje); $i++) {
   
    echo '<pre>';
    echo $polje[$i].'</br>';
    echo '</pre>';
}
echo '<br>';
echo '<hr>';
echo 'Zadatak 4.';
echo '<br>';
echo '<br>';

$polje = array();
$polje['a'] = 'Luka';
$polje['c'] = 'Danijela';
$polje['b'] = 'David';
$polje['e'] = 'Marko';
$polje['k'] = 'Dario';

ksort($polje);

foreach ($polje as $key => $ime){
    echo '<pre>';
    echo $key.' => '.$ime.'</br>';
    echo '</pre>';
            
}

echo '<br>';
echo '<hr>';
echo 'Zadatak 5.';
echo '<br>';
echo '<br>';

$brojevi=array();

for ($i = 1; $i <= 100; $i++) {
    $brojevi[] = $i;
}

foreach($brojevi as $broj){
    
    echo $broj.'</br>';
    
}
echo '<pre>';
print_r($brojevi);
echo '</pre>';

?>
