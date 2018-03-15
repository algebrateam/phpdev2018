<?php

$ucenici = array('1'=> array('ime'=>'Ivan','prezime' =>'Ivanic'),
    '2' => array('ime'=>'Mate','prezime'=> 'Matić'),
    '3' => array('ime' =>'Ante','prezime' => 'Antić'));
        
        foreach($ucenici as $br_ucenika => $podaci)
{
    foreach($podaci as $naziv_podataka => $vrijednost_podataka)
    {
        echo 'ucenik br.'.$br_ucenika.' - '.$naziv_podataka.': '.$vrijednost_podataka;
    }
        }
