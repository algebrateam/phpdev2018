<!DOCTYPE html>
<html>
<body>

<?php
echo 'Primjer 1. <br>';

$polje = array('Tesla','Edison','Bell');
echo $polje[1];

echo '<hr>';

for ($i=0; $i <= 2; $i++)
{
    echo $polje[$i];
}

echo '<hr>';
foreach($polje as $ime){
    echo $ime;
}
echo '<hr>';

$polje = array('Tesla', 'ime' => 'Edison', 'Bell');

echo '<pre>';
print_r($polje);
echo '</pre>';

echo '<hr>';
$polje = array('Tesla', 'Edison', 'Bell');
echo $polje[0];
echo $polje[1];
echo $polje[2];
echo '<br>';

for($i=0; $i <= 2; $i++)
{
    echo $polje[$i];
}

echo '<hr>';
for ($i=0; $i < count($polje); $i++)
{
    echo $polje[$i];
}
echo '<hr>';
$polje = array('Tesla', 'Edison', 'Bell');
foreach($polje as $ime)
{
    echo $ime;
}

echo '<hr>';

foreach($polje as $ime):
    echo $ime;
endforeach;

echo '<hr>';
foreach($polje as $key => $ime)
{
    echo 'Element broj '.$key.' ima vrijednost: '.$ime;
}
echo '<hr>';
$ucenici = array('1' => array('ime'=>'Ivan', 'prezime' => 'Ivanic'),
    '2' => array('ime'=>'Mate', 'prezime'=>'Matić'),
    '3' => array('ime'=> 'Ante', 'prezime'=>'Antic'));

foreach($ucenici as $br_ucenika => $podaci)
    {
        foreach($podaci as $naziv_podataka => $vrijednost_podataka)
        {
            echo 'ucenik br. '.$br_ucenika.' - '.$naziv_podataka.': '.$vrijednost_podataka.'<br>';
        }
}

?>

</body>
</html> 