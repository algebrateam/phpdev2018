<!DOCTYPE html>
<html>
<body>

<?php
echo 'Primjer 1. <br>';

$polje = ['Tesla', 'Edison', 'Bell'];
echo $polje[1];

echo '<hr>';

for ($i = 0; $i <= 2; $i++) {
    echo $polje[$i];
}

echo '<hr>';
foreach ($polje as $ime) {
    echo $ime;
}
echo '<hr>';

$polje = ['Tesla', 'ime' => 'Edison', 'Bell'];

echo '<pre>';
print_r($polje);
echo '</pre>';

echo '<hr>';
$polje = ['Tesla', 'Edison', 'Bell'];
echo $polje[0];
echo $polje[1];
echo $polje[2];
echo '<br>';

for ($i = 0; $i <= 2; $i++) {
    echo $polje[$i];
}

echo '<hr>';
for ($i = 0; $i < count($polje); $i++) {
    echo $polje[$i];
}
echo '<hr>';
$polje = ['Tesla', 'Edison', 'Bell'];
foreach ($polje as $ime) {
    echo $ime;
}

echo '<hr>';

foreach ($polje as $ime):
    echo $ime;
endforeach;

echo '<hr>';
foreach ($polje as $key => $ime) {
    echo 'Element broj '.$key.' ima vrijednost: '.$ime;
}
echo '<hr>';
$ucenici = ['1' => ['ime'=>'Ivan', 'prezime' => 'Ivanic'],
    '2' => ['ime'=>'Mate', 'prezime'=>'Matić'],
    '3' => ['ime'=> 'Ante', 'prezime'=>'Antic'], ];

foreach ($ucenici as $br_ucenika => $podaci) {
    foreach ($podaci as $naziv_podataka => $vrijednost_podataka) {
        echo 'ucenik br. '.$br_ucenika.' - '.$naziv_podataka.': '.$vrijednost_podataka.'<br>';
    }
}

echo '<hr>';
$elem1 = [1, 5, 7];
$elem2 = [4, 8, 9];
$elem3 = [2, 3, 6];

$multi_array = [$elem1, $elem2, $elem3];

echo '<pre>';
print_r($multi_array);
echo '</pre>';

echo $multi_array[2][1];

echo '<hr>';

foreach ($multi_array as $elem) {
    foreach ($elem as $val) {
        echo $val;
    }
}

echo '<hr>';
$elem1 = ['ime'=>'Petar', 'prezime' => 'Petric', 'MB' => '123'];
$elem2 = ['ime'=>'Ante', 'prezime' => 'Antic', 'MB' => '234'];
$multi_array = ['ucenik1' => $elem1, 'ucenik2' => $elem2];

echo '<pre>';
print_r($multi_array);
echo '</pre>';

echo '<hr>';
echo $multi_array['ucenik2']['MB'];
?>

</body>
</html> 