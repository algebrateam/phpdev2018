<?php

$ucenici = ['1'=> ['ime'=>'Ivan', 'prezime' =>'Ivanic'],
    '2' => ['ime'=>'Mate', 'prezime'=> 'Matić'],
    '3' => ['ime' =>'Ante', 'prezime' => 'Antić'], ];

        foreach ($ucenici as $br_ucenika => $podaci) {
            foreach ($podaci as $naziv_podataka => $vrijednost_podataka) {
                echo 'ucenik br.'.$br_ucenika.' - '.$naziv_podataka.': '.$vrijednost_podataka;
            }
        }
