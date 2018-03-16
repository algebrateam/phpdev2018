<?php

//primjer za if else petlju

$temperatura = 4;

/**
 * Može i ovako ali javlja PSR grešku
 * znači da se ne preporučuje
 */
//if ($temperatura <= 10):
//    echo 'Obuci majicu dugih rukava';
//else:
//    echo 'Obuci majicu kratkih rukava';
//endif;


// primjer za switch-case petlju
echo '<br>';
echo '<br>';
$omiljenaboja = 'Plava';
switch ($omiljenaboja) {
    case 'Zuta':
        echo 'Zuta je vasa omiljena boja';
        break;
    case 'Zelena':
        echo 'Zelena je vasa omiljena boja';
        break;
    case 'Plava':
        echo 'Plava je vasa omiljena boja';
        break;
    case 'Crvena':
    echo 'Crvena je vasa omiljena boja';
        break;
    default: echo 'Nemam pojma koja je vasa omiljena boja';

    }
// primjer za for petlju
    echo '<br>';
    for ($i = 1; $i <= 100; $i++) {
        echo "Skida se ... $i% <br>";
    }
    echo 'Vas fajl je uspjesno skinut';
