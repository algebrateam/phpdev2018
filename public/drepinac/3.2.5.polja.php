<!DOCTYPE html>
<html>
 <body>
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
echo '</br>';
echo 'Zadatak 1 za ponavljanje</br>';

$broj1 = 55;
$broj2 = 127;
$broj3 = 1234567890;

echo 'Varijabla <var>$broj1</var> ima vrijednost '.$broj1.'<br/>';
echo 'Varijabla <var>$broj2</var> ima vrijednost '.$broj2.'<br/>';
echo 'Varijabla <var>$broj3</var> ima vrijednost '.$broj3.'<br/>';
echo '</br>';
echo 'Zadatak 2 za ponavljanje</br>';

$a = 3;
$b = 5;

echo 'Varijabla <var>$a</var> ima vrijednost '.$a.'<br/>';
echo 'Varijabla <var>$b</var> ima vrijednost '.$b.'<br/>';

$pom = $a;
$a = $b;
$b = $pom;

echo 'Vrijednosti varijabli $a i $b nakon zamijene</br>';
echo 'Varijabla <var>$a</var> ima vrijednost '.$a.'<br/>';
echo 'Varijabla <var>$b</var> ima vrijednost '.$b.'<br/>';

echo '</br>';

$ime_prezime = 'Darko Repinac';

echo 'Moje ime i prezime je: '.$ime_prezime.'</br>';

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
 </body>   
</html>

