<?php

include 'data.php';

print_r($data);
/* echo '<table>';
  foreach ($data as $key => $value){
  echo '<tr>'.
  '<td>',$value['ime'].'</td>'
  ,$value['datum'].'</td>'
  .'<td>'
  .'<select>';
  if($value['placeno']=='Da'){
  echo '><option value="Da"Selected>Da</option>';
  }
  else {
  echo '<option value="Ne"Selected>Ne</option>';
  }

 */



foreach ($data as $row) {
    foreach ($row as $key => $v) {
        ${$key}[] = $v;
    }
}
echo "<table border=1 cellpadding=10 align=center>";
echo'<tr>';
echo('<td>Ime</td>');
echo('<td>Prezime </td>');
echo('<td> Datum</td>');
echo('<td> Placeno</td>');
echo'</tr>';

foreach ($data as $k => $val) {
    echo "<tr> " .
    "<td>" . $val['ime'] . "</td>
     <td>" . $val['prezime'] . "</td>
    <td>" . $val['datum'] . "</td>";
}


echo "</table>";
