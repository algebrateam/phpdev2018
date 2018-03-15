<?php
echo 'Primjer 1.<br>';
$polje=array('Edison', 'Tesla', 'Bell');
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
$ucenici=array('1'=>array('ime'=>'Ivan', 'prezime'=>'Ivanic'),
               '2'=>array('ime'=>'Ante', 'prezime'=>'Antic'),
               '3'=>array('ime'=>'Mate', 'prezime'=>'Matic'));
           foreach ($ucenici as $br_ucenika => $podaci) {
               foreach ($podaci as $naziv_podatka => $vrijednost_podatka) {
                   echo 'ucenik br.'.$br_ucenika.' - '.$naziv_podatka.': '.$vrijednost_podatka.'<br>';
               }
}