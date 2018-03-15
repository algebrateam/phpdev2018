<?php

$polje = array ('Tesla','Edison','Bell');

echo $polje[1];

echo '<br>';
  echo '<hr>';
  
for($i=0;$i <= 2; $i++){
    echo $polje[$i];
}

echo '<br>';
  echo '<hr>';
  
foreach($polje as $ime){
    echo $ime;
}

echo '<br>';
  echo '<hr>';
  
$polje = array('Tesla','ime' => 'Edison','Bell');

echo '<pre>';
print_r($polje);
echo'</pre>';

echo '<br>';
  echo '<hr>';
  
$polje = array('Tesla','Edison','Bell');
echo $polje[0];
echo $polje[1];
echo $polje[2];

echo '<br>';
  echo '<hr>';
  
for($i=0;$i<=2;$i++){
    echo $polje[$i];
}

$polje = array('Tesla','Edison','Bell');

echo '<br>';
  echo '<hr>';
  
foreach ($polje as $ime){
    echo $ime;
}

echo '<br>';
  echo '<hr>';
  
foreach($polje as $ime):
echo $ime;
endforeach;

echo '<br>';
  echo '<hr>';
  
foreach ($polje as $key => $ime){
    echo 'Element broj '.$key.' ima vrijednosti: '.$ime.'</br>';
}

echo '<br>';
echo '<hr>';

$ucenici = array('1' => array('ime' => 'Ivan','prezime' => 'Ivanić'),
    '2' => array('ime' => 'Mate','prezime' => 'Matić'), 
    '3' => array('ime' => 'Ante','prezime' => 'Antić'));

foreach ($ucenici as $br_ucenika => $podaci){
    
    foreach ($podaci as $naziv_podatka => $vrijednost_podatka){
        echo 'ucenik br.'.$br_ucenika.'-'.$naziv_podatka.': '.$vrijednost_podatka;
    }
}

echo '<br>';
echo '<hr>';

$elem1 = array(1,5,7);
$elem2 = array(4,8,9);
$elem3 = array(2,3,6);

$multi_array = array($elem1,$elem2,$elem3);

echo '<pre>';
print_r($multi_array);
echo '</pre>';

echo '<br>';
echo '<hr>';

echo $multi_array[2][1];

echo '<br>';
echo '<hr>';

foreach ($multi_array as $elem){
    
    foreach($elem as $val){
        echo $val;
    }
   
    
}

echo '<br>';
echo '<hr>';

$elem1 = array ('ime' => 'Petar','prezime' => 'Petric', 'MB' => '123');
$elem2 = array ('ime' => 'Ante','prezime' => 'Antic', 'MB' => '234');

$multi_array = array('ucenik1'=>$elem1,'ucenik2'=>$elem2 );

echo '<pre>';
print_r($multi_array);
echo '</pre>';

echo '<br>';
echo '<hr>';

echo $multi_array['ucenik2']['MB'];