<?php
echo 'Prvi zadatak'.'<br>';
$polje_imena = array('Klara', 'Josip', 'Emanuel', 'Tereza', 'Lucija');

foreach ($polje_imena as $ime) {
    echo $ime.'<br>';
}

echo '<br>Drugi zadatak <br>';
$polje_imena = array();
$polje_imena['ime5'] = 'Lucija';
$polje_imena['ime4'] = 'Tereza';
$polje_imena['ime3'] = 'Emanuel';
$polje_imena['ime2'] = 'Josip';
$polje_imena['ime1'] = 'Klara';

foreach ($polje_imena as $key => $ime) {
    echo 'Ključ '.$key.' ima vrijednost: '.$ime.'<br>';
}

echo '<br>treci zadatak<br>';
sort($polje_imena);

for ($i = 0; $i <= 4; $i++) {
    echo $polje_imena[$i].'<br>';
}

echo '<br>cetvrti zadatak<br>';
$polje_imena = array();
$polje_imena['ime5'] = 'Lucija';
$polje_imena['ime4'] = 'Tereza';
$polje_imena['ime3'] = 'Emanuel';
$polje_imena['ime2'] = 'Josip';
$polje_imena['ime1'] = 'Klara';

ksort($polje_imena);

foreach ($polje_imena as $key => $ime) {
    echo 'Ključ '.$key.' ima vrijednost: '.$ime.'<br>';
}

echo "<br>Peti zadatak<br>";
$polje_brojeva = array();

for ($i = 1; $i <= 100; $i++) {
    $polje_brojeva[] = $i;
}

foreach ($polje_brojeva as $broj) {
    echo $broj."<br>";
}





/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
