<?php

$polje = array('Tesla','Edison','Bell');

echo $polje[0].'<br/>';
echo $polje[1].'<br/>';
echo $polje[2].'<br/>';
echo '<br/>';
echo '<br/>';
echo 'Drugi način definiranja polja<br />';
echo '<br/>';
$polje[0] = 'Edison';
$polje[1] = 'Bell';
$polje[2] = 'Tesla';

echo $polje[0].'<br/>';
echo $polje[1].'<br/>';
echo $polje[2].'<br/>';

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
