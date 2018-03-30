<?php

include 'data.php';
//print_r($data);

function date_trans($datum)
{
    $tmp=$explode('-', $datum);
    //print_r($tmp);
    return $tmp[2].'.'.$tmp[1].'.'.$tmp[0];
}




echo '<table>';
foreach ($data as $key => $value) {
    echo '<tr>'
    .'<td>'.$value ['ime']
    .'<td>'.$value ['prezime']
    .'<td>'.date_format(date_create($value['datum']), 'd.m.Y')
    .'<td>'
    .'<select>';
    if ($value['placeno']=='Da') {
        echo '<option value="Da" Selected>Da</option>';
        echo '<option value="Ne">Ne</option>';
    } else {
        echo '<option value="Ne" Selected>Ne</option>';
        echo '<option value="Da">Da</option>';
    }
    
    
    
    echo '</select>'.'</td>'.'</tr>';
}

echo '</table>';


//for ($i = 0; $i < count($data); $i++) {
//
//    echo $data[$i] . '<br>';
//}
/*
Array
        (
            [ime] => Iva
            [prezime] => Ivic
            [datum] => 2011-03-01
            [placeno] => Da
        ) */
