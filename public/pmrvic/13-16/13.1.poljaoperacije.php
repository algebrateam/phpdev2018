<?php
/**
 * Prebrojavanje elemenata...
 */
unset($fruits);
$fruits = [0       => 'limun',
                'a'=> 'naranca',
                 1 => 'banana',
                'b'=> 'jabuka',
                7  => 'banana',
                2  => 'grejp', ];

$brojelemenata = 0;
echo '<ul>';
foreach ($fruits as $znak=> $vrijednost) {
  
  echo '<li>'
  .$znak
    .' ima vrijednost:'
    .$vrijednost
    .'</li>';
}
echo '</ul>';

foreach ($fruits as $key => $value) {
    $brojelemenata++;
}

echo 'prebrojali smo '.$brojelemenata.' elemenata polja';

$brojelemenata=0;
// broj elemenata oznacenih indexom
foreach ($fruits as $key => $value) {
  if(gettype($key)=='integer'){
  $brojelemenata++;
  }
}

echo '<br> zadnje element polja je:'.$value.'<br>';

echo 'prebrojali smo index '.$brojelemenata.' elemenata polja';

echo '<pre>';
print_r($fruits);
echo '<pre>';

echo '<br>broj elemenata u polju je $brojelemenata: ';

echo count($fruits);

echo '<hr> zadnji element pomoću iteracije';

foreach ($fruits as $key => $value) {
}
echo '<br>zadnji element je:'.$value;
echo '<hr>';

$brojelemenata = 0;
foreach ($fruits as $key => $value) {
    $brojelemenata++;
    if ($brojelemenata == 3) {
        break;
    }
}

echo "<br>treće polje sa ključem $key ima vrijednost: ".$value;

echo '<br>zadnji element polja je '.end($fruits);

/// Pretraživanje polja

foreach ($fruits as $kljuc => $vrijednost) {
    if ($vrijednost == 'jabuka') {
        break;
    }
}
echo '<br>jabuka se nalazi pod ključem '.$kljuc;

$key = array_search('banana', $fruits);
echo '<br>Našao sam bananu:'.$key;

//unset($fruits[$key]);

$key = array_search('jabuka', $fruits);
echo '<br>Našao sam jabuku pod ključem:'.$key;

if (in_array('banana', $fruits)) {
    echo '<br>banana je nadjena!';
}

unset($fruits[7]);  // izbacimo element pod kljucem 7

if (in_array('banana', $fruits)) {
    echo 'banana je nadjena!';
} else {
    echo 'nema banane :( ';
}
foreach ($fruits as $value) {
    echo $value;
}
