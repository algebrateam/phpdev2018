<?php
function sljedeci()
{
    echo '<hr><br>';
}
echo 'Zadatak 1.<br><br>';
function hr_month()
{
    switch (date('n')):
        case '1':
            $month='Siječanj';
            break;
        case '2':
            $month='Veljača';
            break;
        case '3':
            $month='Ožujak';
            break;
        case '4':
            $month='Travanj';
            break;
        case '5':
            $month='Svibanj';
            break;
        case '6':
            $month='Lipanj';
            break;
        case '7':
            $month='Srpanj';
            break;
        case '8':
            $month='Kolovoz';
            break;
        case '9':
            $month='Rujan';
            break;
        case '10':
            $month='Listopad';
            break;
        case '11':
            $month='Studeni';
            break;
        case '12':
            $month='Prosinac';
            break;
    endswitch;
    echo 'Trenutno je mjesec '.$month;
}
hr_month();
sljedeci();
echo 'Zadatak 2.<br><br>';
//function tablica($tablica)
//{
//    echo "<table border='1'>";
//    foreach ($tablica as $ime=>$prezime)
//            
//    {
//        echo "<tr>
//                
//                <td>$ime</td>
//                <td>$prezime</td>
//              </tr>";
//                
//    }
//    
//    echo "</table>";
//}
//
//$ime = ['ivan', 'petar'];
//$prezime = ['ivic', 'Peric'];
//tablica($ime=>$prezime);
function tablica()
{
    $ucenici = func_get_arg(0);

    echo '
<table border=1>
<tr>
  <th>Broj</th>
  <th>Ime</th>
  <th>Prezime</th>
</tr>
';
    for ($i = 0; $i < count($ucenici); $i += 2) {
        echo '
 <tr>
  <td>'.($i / 2).'</td>
  <td>'.$ucenici[$i].'</td>
  <td>'.$ucenici[$i + 1].'</td>
</tr>
';
    }

    echo '</table>';
}

$poljeimena = ['Ivan', 'Aralica', 'Petar', 'Maric', 'Ivica', 'Tucak', 'Domagoj', 'Ždero'];

tablica($poljeimena);
sljedeci();
echo 'Zadatak 3.<br><br>';
function izracunaj($a,$b)
{
    //$sum=$a+$b;
    //return $sum;
    echo "$a + $b".' = '.($a + $b).'<br>';
    echo "$a - $b".' = '.($a - $b).'<br>';
    echo "$a * $b".' = '.($a * $b).'<br>';
    echo "$a / $b".' = '.($a / $b).'<br>';
}
$a=13;
$b=5;
echo izracunaj($a,$b);
sljedeci();
echo 'Zadatak 4.<br><br>';
    function parametar()
        {
            $i = 0;
            $parametri = func_get_args();
            foreach ($parametri as $par)
                {
                $i++;
                echo 'Uzorak ' . $i . '. parametra je ' . gettype($par);
                echo '<br>';
                }
       }

echo parametar('Domagoj', 'Ivica', 17, 58, 'Đuro', ['1', '2', '3']);