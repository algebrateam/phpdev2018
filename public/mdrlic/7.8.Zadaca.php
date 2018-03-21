<?php

echo 'Zadatak 1<br>';
function hrv_month()
{
    switch (date('n')):
        
        case '1':
            $month = 'siječanj';
    break;
    case '2':
            $month = 'veljača';
    break;
    case '3':
            $month = 'ožujak';
    break;
    case '4':
            $month = 'travanj';
    break;
    case '5':
            $month = 'svibanj';
    break;
    case '6':
            $month = 'lipanj';
    break;
    case '7':
            $month = 'srpanj';
    break;
    case '8':
            $month = 'kolovoz';
    break;
    case '9':
            $month = 'rujan';
    break;
    case '10':
            $month = 'listopad';
    break;
    case '11':
            $month = 'studeni';
    break;
    case '12':
            $month = 'prosinac';
    break;
          
    endswitch;
    
    echo 'Ovaj mjesec je: '.$month;
}

hrv_month();


echo '<br><br>Zadatak 2<br>';
function ispis_tablice($imena)
{
    echo '
    <table border = 1>
    <tr>
    <th>Redni broj</th>
    <th>Ime</th>
    <th>Prezime</th>
    </tr>';
    
    foreach ($imena as $key => $ucenik) {
        echo '
        <tr>
        <td>'.$key.'</td>
        <td>'.$ucenik['ime'].'</td>
        <td>'.$ucenik['prezime'].'</td>
        </tr>';
    }
    echo '</table>';
}

$ucenici = array();

$ucenici[1]['ime'] = 'Iva';
$ucenici[1]['prezime'] = 'Matić';

$ucenici[2]['ime'] = 'Katarina';
$ucenici[2]['prezime'] = 'Krivić';

$ucenici[3]['ime'] = 'Matea';
$ucenici[3]['prezime'] = 'Starčević';

ispis_tablice($ucenici);


echo '<br>Zadatak 3<br>';
$a = 6;
$b = 3;

function zbrajanje($a, $b)
{
    return $a.' + '.$b.' = '.($a+$b).'<br>';
}

function oduzimanje($a, $b)
{
    return $a.' - '.$b.' = '.($a-$b).'<br>';
}

function mnozenje($a, $b)
{
    return $a.' * '.$b.' = '.($a*$b).'<br>';
}

function dijeljenje($a, $b)
{
    return $a.' / '.$b.' = '.($a/$b);
}

function sve($a, $b)
{
    echo zbrajanje($a, $b);
    echo oduzimanje($a, $b);
    echo mnozenje($a, $b);
    echo dijeljenje($a, $b);
}

sve($a, $b);


echo '<br><br>Zadatak 4<br>';
function par()
{
    $parametars = func_get_args();
    
    foreach ($parametars as $par) {
        if (is_int($par)) {
            echo $par.' je broj<br>';
        } else {
            echo $par.' je string<br>';
        }
    }
}

echo par('Iva', 4, 'Leo', 6);


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
