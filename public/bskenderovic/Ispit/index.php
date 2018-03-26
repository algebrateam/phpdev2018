
<?php

include 'data.php';
//print_r($data);

function tablica($imenaNiz)
{
    echo '<table border = "2">
            <tr>
            <th> Ime </th>
            <th> Prezime </th>
            <th> Datum </th>
            <th> Plaćeno </th>
            </tr>';
    foreach ($imenaNiz as $key => $osoba) {
        echo '<td>'.$osoba['ime'].'</td>';
        echo '<td>'.$osoba['prezime'].'</td>';
        echo '<td>'.$osoba['datum'].'</td>';
        echo '<td>'.'<select>';
                if ($osoba['placeno'] == 'Da'){
                echo '<option value="Da">Da</option>'
                .'<option value="Ne">Ne</option>';
                }else{
                echo '<option value="Ne">Ne</option>'
                .'<option value="Da">Da</option>';
                }
                echo '</select>';
                echo '</td>';
             
        echo '</tr>';
    }
    echo '</table>';
}



tablica($data);


