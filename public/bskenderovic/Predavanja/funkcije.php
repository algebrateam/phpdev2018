<?php
 $timestamp = time();
 echo $timestamp;
echo '<br>';
$datum = date('L', (time() - 365 * 24 * 60 * 60));

echo 'Ako je prijestupna ispise 1:'.$datum;

echo '<br>';
echo '<br>';

function show_naslov($naslov ='no_title')
{
    switch ($naslov):
    case 'film':
        $var = 'Terminator';
    break;
    case 'serija':
        $var = 'Dr. House';
    break;
    case 'no_title':
        $var = 'nema naslova';
    break;
    endswitch;
    
    echo $var;
}
function show_imena($imena = array())
{
    foreach ($imena as $ime) {
        echo $ime;
        echo '<br>';
    }
}
show_naslov('film');
echo '<br>';
show_imena(array('Bela','Danijel'));
