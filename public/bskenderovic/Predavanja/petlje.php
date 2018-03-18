<?php

$a = 5;
$b = 4;

if ($a != $b) {
    echo 'brojevi su različiti '.$a.' '.$b;
} else {
    echo 'brojevi su jednaki';
}

$a = 4;
$b = '4';
if ($a === $b) {
    echo 'brojevi su jednaki '.$a.' '.$b;
    echo '<br>tip $a:'.gettype($a);
    echo '<br>tip $a:'.gettype($b);
} else {
    echo 'brojevi su različiti '.$a.' '.$b;
    printf('<br>Formatirani ispis varijable a:%d', $a);
    echo '<br>tip $a:'.gettype($a);
    echo '<br>tip $a:'.gettype($b);
}
echo '<br>';

$naziv = 'alg';
if (strlen($naziv) >= 5) {
    echo 'Odlicno';
} else {
<<<<<<< HEAD
    if (strlen($naziv) >= 3 && strlen($naziv) <= 4) {
        echo 'Ajde ok';
    } else {
        echo 'nista od igrice';
    }
}
=======
     if (strlen($naziv) >= 3 && strlen($naziv) <= 4) {
         echo 'Ajde ok';
     } else {
         echo 'nista od igrice';
     }
 }
>>>>>>> 3d4d8f66e6e7ed87ef5260b8b3ddd19e2f3a0c68
