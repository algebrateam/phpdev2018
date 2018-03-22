<?php
echo "<br>Prvi zadatak<br>";
function hr_mjesec($mj)
{
    $mj_array =array();
    $mj_array[1] = "Sječanj";
    $mj_array[2] = "Veljača";
    $mj_array[3] = "Ožujak";
    $mj_array[4] = "Travanj";
  
  $mj_array[5] = "Svibanj";
  $mj_array[] = "Lipanj";
  $mj_array[] = "Srpanj";
  $mj_array[] = "Kolovoz";
  $mj_array[] = "Rujan";
  $mj_array[] = "Listopad";
  $mj_array[] = "Studeni";
  $mj_array[] = "Prosinac";
  return $mj_array[$mj];
}
$mj = date('n');
echo hr_mjesec($mj);
?>

<?php
echo "<br>Drugi Zadatak<br>";
function ispis_tablica($imenaArray)
{
    echo'
    <table border ="1">
        <tr>
        <th>Ime</th>
        <th>Prezime</th>
        </tr>';
    foreach($imenaArray as $key => $ucenik)
    {
        echo '
        <tr>
        <td>'.$ucenik["ime"].'</td>
                <td>'.$ucenik["prezime"].'</td>
                </tr>';
    }
    
    echo '</table>';
    
}
$ucenici = array();
$ucenici[1]["ime"] = "Ivan";
$ucenici[1]["prezime"] ="Maric";
$ucenici[2]["ime"] ="Petar";
$ucenici[2]["prezime"] ="Petkovic";
ispis_tablica($ucenici);
?>

<?php
echo "<br>Treći Zadatak<br>";
function sum($a,$b)
{
    return $a+$b;
    
}
function raz($a,$b)
        
{
    return $a-$b;
}
function mnoz($a,$b)
{
    return $a*$b;
}
function djel($a,$b)
{
    return $a/$b;
}
function sve($a,$b)
{
    echo sum($a,$b);
    echo raz($a,$b);
    echo mnoz ($a,$b);
    echo djel($a,$b);
}
$i = 4;
$j = 2;
sve($i,$j);
?>
     
<?php
echo "<br>Četvrti Zadatak<br>";
function param()
{
    $parametars = func_get_args();
    
    foreach($parametars as $param)
    {
        if(is_int($param))
        {
            echo $param."je broj";
        }
        else
        {
            echo $param."je string";
        }    
    }
}
echo param("Ema", 7 , 3, "Ivan");
?>