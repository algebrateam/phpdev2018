<?php
include 'data.php';

function date_trans($datum)
{
    $tmp= explode('-', $datum);
    // print_r($tmp);
    return $tmp[2].'.'.$tmp[1].'.'.$tmp[0];
}
echo '<table>';
foreach ($data as $key => $value) {
    echo '<tr>'
  .'<td>'.$value['ime'].'</td>'
  .'<td>'.$value['prezime'].'</td>'
  .'<td>'.date_format(date_create($value['datum']), 'd.m.Y').'</td>'
  .'<td>'.date_trans($value['datum']).'</td>'
  .'<td>'
  .'<select>';
    if ($value['placeno']=='Da') {
        echo '<option value="Da" Selected>Da</option>'
  .'<option value="Ne">Ne</option>';
    } else {
        echo '<option value="Ne" Selected>Ne</option>'
  .'<option value="Da">Da</option>';
    }
 
    echo '</select>'
  .'</td>'
  .'</tr>';
}
echo '</table>';
