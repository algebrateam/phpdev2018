<?php

function show_naslov($naslov = 'no_title')
{
    switch ($naslov):
        case 'film':
           $var = 'Terminator';
    break;
    case 'serija':
            $var = 'Dr. House';
    break;
    case 'no_title':
            $var = "";
    break;
      
    endswitch;
    echo $var;
}
    function show_imena($imena = array())
    {
        foreach ($imena as $ime) {
            echo $ime;
        }
    }
    show_naslov('serija');
    show_imena();
