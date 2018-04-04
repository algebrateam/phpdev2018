<?php

echo 'Primjer 1.<br>';
$polje = ['Edison', 'Tesla', 'Bell'];
foreach ($polje as $ime) {
    echo $ime.'<br>';
}
echo '<hr><br>';

echo 'Primjer 2.<br>';
foreach ($polje as $ime):
    echo $ime.'<br>';
endforeach;
echo '<hr><br>';

echo 'Primjer 3.<br>';
$ucenici = ['1'   => ['ime'=>'Ivan', 'prezime'=>'Ivanic'],
                '2'=> ['ime'=>'Ante', 'prezime'=>'Antic'],
                '3'=> ['ime'=>'Mate', 'prezime'=>'Matic'], ];
            foreach ($ucenici as $br_ucenika => $podaci) {
                foreach ($podaci as $naziv_podatka => $vrijednost_podatka) {
                    echo 'ucenik br.'.$br_ucenika.' - '.$naziv_podatka.': '.$vrijednost_podatka.'<br>';
                }
            }
