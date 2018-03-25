<!DOCTYPE html>
<html>
    <body>

        <?php
        include 'data.php';

        echo '<table border=1>';
        foreach($data as $key => $value){
            if (isAssoc($data)){
                echo '<thead><tr style="background-color: gray"><th>Redni<br>br';
                foreach($value as $kljuc => $vrijednost){
                    echo '<th>'.$kljuc.'</th>';
                }
                echo '</tr></thead>';
                break;
            }
        }
        echo '<tbody>';
        foreach($data as $key => $value){
            echo '<tr><td style="text-align:right">'.$key.'.</td>';
            echo '<td>'.$value['ime'].'</td>';
            echo '<td>'.$value['prezime'].'</td>';
            echo '<td>'.form_datum($value['datum']).'</td>';
            echo '<td>'.'<select>';
                if ($value['placeno'] == 'Da') {
                    echo '<option value="Da" Selected>Da</option>';
                    echo '<option value="Ne">Ne</option>';
                } else {
                    echo '<option value="Ne" Selected>Ne</option>';
                    echo '<option value="Da">Da</option>';
                }
                echo '</select></td>';
            }
        echo '</tbody></table>';
        
        function form_datum ($datum){
            return substr($datum,8,2).'.'.substr($datum,5,2).'.'.substr($datum,0,4);
        }
        function isAssoc(array $arr) //provjerava da li je polje asociativno ili indeksno
{
       if (array() === $arr) {$rezultat = false;} else
       {$rezultat = array_keys($arr) !== range(0, count($arr) - 1);}
       return $rezultat;
}
            ?>
    </body>
</html> 