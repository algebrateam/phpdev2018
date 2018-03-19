<?php

function show_naslov($naslov = 'filmi')
{
    switch ($naslov):
    
    case 'film':
        $var = 'Terminator';
    break;
    case 'serija':
        $var = 'Dr.House';
    break;
    case 'no_title':
        $var = '';
    break;
    default:
        $var = 'ja sam tumpav'.'<br>'.'i to jako'.'<br>'.'kompletno';
        
   
    
    endswitch;

    echo $var;
}

function show_imena($imena = array())
{
    foreach ($imena as $ime) {
        echo $ime;
    }
}
show_naslov();
show_imena();
