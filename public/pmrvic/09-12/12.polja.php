<?php
/**
 * 12
 * Prikazati kolekcije (array). Prikazati načine inicijalizacije
 * kolekcije. Prikazati kako dodavati elemente u kolekcije.
 * Objasniti pridruživanje u kolekciju s tekstualnim i brojčanim
 * ključem. Prikazati višedimenzionalna polja i rad s njima.
 * Obraditi print_r() funkciju.
 */
$polje = ['tesla', 'bell', 'edison'];
  $polje[0];
echo '<pre>';
print_r($polje);
echo '</pre>';

array_push($polje, 'alset');

echo '<pre>';
print_r($polje);
echo '</pre>';

$week = [//dekl & deff
    'pon' => 'mon',
    'uto' => 'tue',
    'sri' => 'wed',
    'thu',
    'pon' => 'mon0',
    'uto' => 'tue0',
    'sri' => 'wed0',
    'thu',
  ];

echo '<pre>';
print_r($week);
echo '</pre>';

echo $week['sri'];

echo '<pre>';
print_r($week);
echo '</pre>';
//echo $week[3];

$polje = []; //deklaracija
$polje['b1'] = 'plava'; //definicije
$polje['b2'] = 'crvena';

echo '<pre>';
print_r($polje);
echo '</pre>';

echo '<hr>';
echo '<br>foreach $key->$value<br>';
foreach ($polje as $sifre => $boje) {
    echo 'boja pod sifrom '.$sifre.' je '.$boje.'<br>';
}

echo '<hr>';

$p1 = [];

array_push($p1, 'golf2');
array_push($p1, 'golf2');
array_push($p1, 'golf2');

for ($i = 0; $i <= 2; $i++) {
    echo $p1[$i];
}
echo '<hr>ispis golfova na drugi način:<br>';
for ($i = 0; $i <= count($p1) - 1; $i++) {
    echo $p1[$i];
}
echo '<hr>';

foreach ($p1 as $auto) {
    echo $auto;
}

// VIŠEDIMENZIONALNA POLJA
$elem1 = [1, 3, 4];
$elem2 = [5, 88, 44];
$elem3 = [41, [77, 66, 55], 42];

$polje = [$elem1, $elem2, $elem3];

echo '<pre>';

print_r($polje);

echo '</pre>';

echo '<pre>';
foreach ($polje as $value) {
    foreach ($value as $broj) {
        if (gettype($broj) == 'array') {
            print_r($broj);
        } else {
            echo ' '.$broj.' ';
        }
    }
}
echo '</pre>';

$polja = ['xyz', '1'=>'Tesla', '2'=>'Edison'];

//echo $polja[1];

//// ispis pomoću for petlje

for ($i = 0; $i <= 2; $i++) {
    echo ' '.$polja[$i];
}

// ovdje ne moram znati broj polja niti početni index
foreach ($polja as $value) {
    echo ' '.$value;
    echo '-*-*-*-*-*-*-*-*-*-*-*-*';
}

//
echo '<br>polje1:<br>';
$polje1 = ['Tesla', 'ime'=>'Edison', 'Bell'];
foreach ($polje1 as $value) {
    echo ' '.$value;
}
echo '<br>polje1 pomoću print_r():<br>';
echo '<pre>';
print_r($polje1);
echo '</pre>';
//echo " ".$polje1['ime'];

//// ispis pomoću for petlje
$polje2 = ['Tesla', 'Edison', 'Bell'];
echo '<br>ispis pomoću count():<br>';

echo 'ukupan broj elemenata arraya polje2 je:<b>'.count($polje2).'</b><br>';

for ($i = 0; $i < count($polje2); $i++) {
    echo ' '.$polje2[$i];
}

//// ispis pomoću foreach uz key=>value
echo '<br><hr>ispis pomoću foreach uz key=>value:<br>';
foreach ($polje2 as $key => $value) {
    echo "moj ključ \"$key\" daje vrijednost $value<br>";
}

echo '<pre>'; echo '</pre>';
foreach ($polje2 as $key => $value) {
    echo "moj ključ \n\t\t$key \t $value\n";
}
