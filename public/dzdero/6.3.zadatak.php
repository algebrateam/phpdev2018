<?php
echo 'Primjer 1.<br>';
$polje = array('Tesla','Edison','Bell');
echo $polje[1];
echo '<hr><br>';

echo 'Primjer 2.<br>';
for($i=0; $i<=2; $i++) {
    echo $polje[$i].', ';
}
echo '<hr><br>';
echo 'Primjer 3.<br>';
foreach ($polje as $ime) {
    echo $ime.', ';
}
echo '<hr><br>';
echo 'Primjer 4.<br>';
$polje = array('Tesla', 'ime'=>'Edison', 'Bell');
echo '<pre>';
print_r($polje);
echo '</pre>';