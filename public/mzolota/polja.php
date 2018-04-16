<?php

$polje = array('Tesla','Edinson','Bell');

echo $polje[1];
?>

<?php
for($i=0;$i<= 2;$i++)
{
    echo $polje[$i];
}
?>

<?php

foreach($polje as $ime)
{
    echo $ime;
}
?>

<?php
$polje = array('Tesla','ime' => 'Edinson','Bell');

echo '<pre>';
print_r($polje);
echo '</pre>';
?>

<?php
$polje = array('Tesla','Edinson','Bell');
echo $polje[0];
echo $polje[1];
echo $polje[2];
?>

<?php
for($i=0;$i <= 2;$i++)
{
    echo $polje[$i];

}
?>

<?php
for($i=0;$i < count($polje);$i++)
{
    echo $polje[$i];
}
?>

<?php
$polje = array('Tesla','Edinson','Bell');

foreach($polje as $ime)
{
    echo $ime;
}
?>

<?php
  $elem1 = array(1,5,7);
  $elem2 = array(4,8,9);
  $elem3 = array(2,3,6);
  
  $multi_array = array($elem1,$elem2,$elem3);
  ?>

<?php
echo'<pre>';
print_r($multi_array);
echo'</pre>';
?>


foreach($multi_array as $elem)
{
    foreach($elem as $val)
    {
        echo $val;
    }    
}

    
