<?php

//6.3
$polje = array('Tesla', 'Edison', 'Bell');

echo $polje[1].'<br><br>';


for($i=0; $i <= 2; $i++)
{
    echo $polje[$i];
}
echo '<br><br>';

foreach($polje as $ime)
{
   echo $ime; 
}
echo '<br><br>';


$polje = array('Tesla', 'ime' => 'Edison', 'Bell');

echo '<pre>';
print_r($polje);
echo '</pre>';

//6.3.1
$polje = array('Tesla', 'Edison', 'Bell');
echo $polje[0];
echo $polje[1];
echo $polje[2];
echo '<br><br>';


$polje = array('Tesla', 'Edison', 'Bell');
for($i=0; $i <= 2; $i++)
{
    echo $polje[$i];
}
echo '<br><br>';


$polje = array('Tesla', 'Edison', 'Bell');
for($i=0; $i < count($polje); $i++)
{
    echo $polje[$i];
}
echo '<br><br>';

//6.3.2
$polje = array('Tesla', 'Edison', 'Bell');

foreach($polje as $ime)
{
    echo $ime;
}
echo '<br><br>';


$polje = array('Tesla', 'Edison', 'Bell');

foreach($polje as $ime):
    echo $ime;
endforeach;
echo '<br><br>';


$polje = array('Tesla', 'Edison', 'Bell');

foreach($polje as $key => $ime)
{
    echo 'Element broj '.$key.' ima vrijednost: '.$ime;
}
echo '<br><br>';


$ucenici = array('1' => array('ime' => 'Ivan', 'prezime' => 'Ivanic'),
        '2' => array('ime' => 'Mate', 'prezime' => 'Matić'),
        '3' => array('ime' => 'Ante', 'prezime' => 'Antic'));

foreach($ucenici as $br_ucenika => $podaci)
{
    foreach($podaci as $naziv_podatka => $vrijednost_podatka)
    {
        echo 'ucenik br. '.$br_ucenika.'-'.$naziv_podatka.': '.$vrijednost_podatka;
    }
}
echo '<br><br>';


//6.4
$elem1 = array(1, 5, 7);
$elem2 = array(4, 8, 9);
$elem3 = array(2, 3, 6);

$multi_array = array($elem1, $elem2, $elem3);
echo '<pre>';
print_r($multi_array);
echo '</pre>';


echo $multi_array[2][1];
echo '<br><br>';


foreach($multi_array as $elem)
{
    foreach($elem as $val)
    {
        echo $val;
    }
}
echo '<br><br>';


$elem1 = array('ime' => 'Petar', 'prezime' => 'Petric', 'MB' => '123');
$elem2 = array('ime' => 'Ante', 'prezime' => 'Antic', 'MB' => '234');

$multi_array = array('ucenik1' => $elem1, 'ucenik2' => $elem2);

echo '<pre>';
print_r($multi_array);
echo '</pre>';


echo $multi_array['ucenik2']['MB'];


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

