<?php
// Višedimenzionalna polja
$elem1 = array(1,5,7);
$elem2 = array(4,8,9);
$elem3 = array(2,3,6);
$multi_array = array ($elem1,$elem2,$elem3);

echo '<pre>';
print_r($multi_array);
echo '</pre>';


echo $multi_array[2][1];
echo '<br>';
foreach($multi_array as $elem)
{
    foreach($elem as $val)
    {
        echo $val;
    }
}
echo '<br>';
//Asocijativno višedimenzionalno polje
$elem1 = array('ime'=> 'Petar', 'prezime'=>'Peric','MB'=>'123');
$elem2 = array('ime'=> 'Ante', 'prezime'=>'Antic','MB'=>'234');
$multi_array=array('ucenik1'=>$elem1,'ucenik2'=>$elem2);

echo '<pre>';
print_r($multi_array);
echo'<pre>';

echo $multi_array['ucenik2']['MB'];