<?php
include 'data.php';
$tabl = '<table border="1">';
//$red = '<tr><td></td><td></td><td></td><td></td></tr>';

echo '<table>';
foreach ($data as $key => $value){
    echo '<tr>';
    echo '<td>'.$value['ime'],'</td>';
    echo '<td>'.$value['prezime'],'</td>';
    echo '<td>'.date_format(date_create($value['datum']),'d.m.Y').'</td>';
    echo '<td>'.date_trans($value['datum']).'</td>';
    echo '<td>'.'<select>';
    if ($value['placeno'] == 'Da') {
        echo '<option value="Da" Selected>Da</option>';
        echo '<option value="Ne">Ne</option>';
    } else {
        echo '<option value="Ne" Selected>Ne</option>';
        echo '<option value="Da">Da</option>';
    }
    echo '</select></td>';
    
    echo '</tr>';
}


echo '</table>';

function date_trans($datum){
$tmp =  explode('-',$datum);
    return '<td>'.$tmp[2].'.'.$tmp[1].'.'.$tmp[0].'</td>';
}

?>
