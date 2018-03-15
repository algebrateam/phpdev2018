<?php
echo 'Primjer 1.<br>';
$polje=array('Edison', 'Tesla', 'Bell');
echo $polje[0].'<br>';
echo $polje[1].'<br>';
echo $polje[2].'<br>';
echo '<hr><br>';

echo 'Primjer 2.<br>';
for($i=0; $i<=2; $i++){
    echo $polje[$i].'<br>';
}
echo '<hr><br>';

echo 'Primjer 3.<br>';
for($i=0; $i<count($polje); $i++){
    echo $polje[$i].'<br>';
}