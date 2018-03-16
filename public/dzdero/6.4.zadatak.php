<?php

echo 'Primjer 1.<br>';
$elem1 = [1, 5, 7];
$elem2 = [4, 8, 9];
$elem3 = [2, 3, 6];
$multi_array = [$elem1, $elem2, $elem3];

echo '<pre>';
print_r($multi_array);
echo '</pre>';

echo '<hr><br>';

echo 'Primjer 2.<br>';
echo $multi_array[2][1];
echo '<hr><br>';

echo 'Primjer 3.<br>';
foreach ($multi_array as $elem) {
    foreach ($elem as $val) {
        echo $val;
    }
}
echo '<hr><br>';

echo 'Primjer 4.<br>';
$elem1 = ['ime'=>'Petar', 'prezime'=>'Petric', 'MB'=>'123'];
$elem2 = ['ime'=>'Ante', 'prezime'=>'Antic', 'MB'=>'234'];
$multi_array = ['ucenik1'=>$elem1, 'ucenik2'=>$elem2];

echo '<pre>';
print_r($multi_array);
echo '</pre>';
echo '<hr><br>';

echo 'Primjer 5.<br>';
echo $multi_array['ucenik2']['MB'];
