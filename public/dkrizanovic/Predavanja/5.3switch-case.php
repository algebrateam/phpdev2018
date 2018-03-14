<?php

$naziv = 'Wien';
switch ($naziv) {
    case 'Rim': echo 'grad je rim';
        break;
    case 'Wien':
    case 'Wienna':
    case 'Beč':
    case 'Vienna':
        echo 'grad je Beč';
        break;
    default: echo 'grad je nepoznat?';
}
