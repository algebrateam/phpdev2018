<?php

$a = 1;
if ($a == 1);
echo 'Varijabla a je jednaka 1';

echo '<br>';
$a = 4;
$b = 5;
if ($a === $b) {
    echo 'Brojevi su jednaki'.$a.''.$b;
} else {
    echo 'brojevi su razliciti'.$a.''.$b;
}
echo '<br>';
$naziv = 'Alg';
    if (strlen($naziv) >= 5) {
        echo 'Odlično';
    } else {
        if (strlen($naziv) >= 3 && strlen($naziv) <= 4) {
            echo 'ajde ok je';
        } else {
            echo 'nista od igrica';
        }
    }
