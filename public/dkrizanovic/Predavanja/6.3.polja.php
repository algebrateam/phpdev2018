<?php

//Prvi sivi zadatak
$polje = array('Tesla', 'Edison', 'Bell');
echo $polje[1];

//Drugi sivi zadatak
echo '<br>';
for ($i = 0; $i <= 2; $i++) {
    echo $polje[$i];
}
echo '<br>';

//treci sivi zadatak
echo '<br>';
foreach($polje as $ime)
{
    echo $ime;
}
echo '<br>';
//cetvrti sivi zadatak
echo '<br>';
$polje = array('Tesla','ime'=>'Edison','Bell');
echo '<pre>';
print_r($polje);
echo '</pre>';

echo '<br>';
echo '<br>';

//6.3.1 Petlja for za ispis polja
echo '<br>';
$polje = array('Tesla','Edison','Bell');
echo $polje[0];
    echo $polje[1];
echo $polje[2];

for($i=0;$i<=2;$i++)
{
    echo $polje[$i];
}
echo '<br>';
echo '<br>';
for($i=0;$i < count($polje);$i++)
{
    echo $polje[$i];
}
echo '<br>';
echo '<br>';
//6.3.2 Petlja forreach za ispis elemenata polja

$polje = array('Tesla','Edison','Bell');
foreach($polje as $ime)
{
    echo $ime;
}

//Vitičaste zagrade zamjenili dvotočkom
echo '<br>';
foreach($polje as $ime):
    echo $ime;
endforeach;
echo '<br>';

foreach($polje as $key => $ime)
{
echo 'Element broj'.$key.'ima vrijednost:'.$ime;
}
echo '<br>';

$ucenici = array('1'=> array('ime'=> 'Ivan','prezime'=>'Ivanic'), '2'=> array('ime'=>'Mate','prezime'=>'Matić'), '3'=> array('ime'=>'Ante','prezime'=>'Antić'));
foreach($ucenici as $br_ucenika=>$podaci)
{
    foreach($podaci as $naziv_podatka=> $vrijednost_podatka)
    {
        echo 'ucenik br.'.$br_ucenika.'-'.$naziv_podatka.':'.$vrijednost_podatka;
}
}