<?php

echo 'Zadatak broj 1<br>';
$polje_imena = array('Martina', 'Matea', 'Lea', 'Marijan', 'Leon');

foreach($polje_imena as $ime)
{
    echo $ime.'<br>';
}

echo '<br>Zadatak broj 2<br>';
$polje_imena = array();
$polje_imena['ime5'] = 'Martina';
$polje_imena['ime4'] = 'Matea';
$polje_imena['ime3'] = 'Lea';
$polje_imena['ime2'] = 'Marijan';
$polje_imena['ime1'] = 'Leon';

foreach($polje_imena as $key => $ime)
{
    echo 'Ključ '.$key.' ima vrijednost: '.$ime.'<br>';
}
/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

