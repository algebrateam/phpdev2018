<?php
/**
 * 21
 * Kontrola toka
 * -
 * switch/case
 * -
 * Prikazati rad s switch/case kontrolom toka. Dati usporedbu
 * s ifelse varijantom istog problema. Objas
 * n
 * iti propadanje u
 * switch/case. Obraditi obije verzije sintakse.
 */

//$naziv="Vienna";  //Vienna ili Wien
$naziv = 'zadar'; //Vienna ili Wien

switch ($naziv) {

  case 'Rim': echo 'grad je rim'; break;

    case 'Vien':
    case 'Wienna':
    case 'Wien':
    case 'Beč': //   echo "grad je Beč"; break;
    case 'Vienna':  echo 'grad je Beč'; break;

    default: echo 'grad je nepoznat?';
}
echo '<hr>';
$a = 3;
switch ($a) {
    case '1': echo '';
    case '2': echo 'kazna'; break;
    case '3':
    case '4': echo 'a je 3 ili 4 što je ok ali ne dolazi kući'; break;

    default: echo 'Bravo!';
}
