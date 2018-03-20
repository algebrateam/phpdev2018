<?php

echo '7.8. Zadaca za ponavljanje';
echo '<br>';
echo '<br>';
echo '1.Napišite funkciju koja vraća hrvatski naziv za trenutačni mjesec. Parametar koji prosljeđujete funkciji je rezultat funkcije date(n)';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
echo '<br>';
//Zadatak 1
function hr_mjesec()
{
    switch(date('n')):
        case '1':
            $mjesec = 'Siječanj';
            break;
         case '2':
            $mjesec = 'Veljača';
            break;
         case '3':
            $mjesec = 'Ožujak';
            break;
         case '4':
            $mjesec = 'Travanj';
            break;
         case '5':
            $mjesec = 'Svibanj';
            break;
         case '6':
            $mjesec = 'Lipanj';
             break;
              case '7':                  
            $mjesec = 'Srpanj';
                     break;
                  case '8':
            $mjesec = 'Kolovoz';
            break;
         case '9':
            $mjesec = 'Rujan';
            break;
         case '10':
            $mjesec = 'Listopad';
            break;
         case '11':
            $mjesec = 'Studeni';
            break;
         case '12':
            $mjesec = 'Prosinac';
            break;
    endswitch;
    echo "<br> Trenutačni mjesec je : $mjesec";
}
hr_mjesec();
echo '<br>';
echo '<br>';
echo '2. Napišite funkciju koja ispisuje HTML tablicu imena i prezimena učenika. Kao parametar joj se proslljeđuje polje s imenima i prezimenima';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
echo '<br>';
//Zadatak 2
function ispis_imena($imena)
{
    echo '<table border="1"width="200">';
    foreach($imena as $key =>$ime)
    {
        echo '<tr> <td>'.($key +1).'</td><td>'.$ime.'</td></tr>';
    }
    
    echo '</table>';
        }
        $ucenici = array('Danijel Krizanovic','Bela Skenderovic','Darko Repinac','Domagoj Zdero','Ilija Kovačević','Davor Peric','Ivana Crnjac','Ivan Vranjes','Magareta Drlic','Marin Zolota');
        ispis_imena($ucenici);
    echo '<br>';
echo '<br>';
echo '3. Napisite funkcije za zbrajanje,razliku, umnozak i djeljenje dva broja. Zatim napisite funkciju koja ce pozivati sve te funkcije odjednom';
echo '<br>';
echo '<br>';
echo 'Rješenje';
echo '<br>';
//Zadatak 3
function sumiraj($a,$b)
{
    $sum = $a + $b;
    return $sum;
}
$a = 1;
$b = 2;
echo "Zbroj brojeva $a i $b je ";
echo sumiraj($a,$b);
//funcija za razliku
echo '<br>';
function razlika($a,$b)
{
    $raz = $a-$b;
    return $raz;
}
echo "Razlika brojeva $a i $b je ";
echo razlika($a,$b);
echo '<br>';
//funkcija za djeljenje
function dje($a,$b)
{
    $dje = $a / $b;
    return $dje;
}
echo "Djeljenjem brojeva $a i $b dobijemo rezultat ";
echo dje($a,$b);
echo '<br>';
//funkcija za umnozak
function umn($a,$b)
{
    $umn = $a * $b;
    return $umn;
}
    echo "Umnozak brojeva $a i $b je ";
echo umn($a,$b);
