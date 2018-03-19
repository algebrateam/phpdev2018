<?php

echo '7.8';
echo '<br>';
echo '<br>';
echo 'Zadatak 1.';
echo '<br>';
echo '<br>';

function mjesec($m)
{
  $mjeseci_niz = array();
  
  $mjeseci_niz[1]="Siječanj";
  $mjeseci_niz[2]="Veljača";
  $mjeseci_niz[3]="Ožujak";
  $mjeseci_niz[4]="Travanj";
  $mjeseci_niz[5]="Svibanj";
  $mjeseci_niz[6]="Lipanj";
  $mjeseci_niz[7]="Srpanj";
  $mjeseci_niz[8]="Kolovoz";
  $mjeseci_niz[9]="Rujan";
  $mjeseci_niz[10]="Listopad";
  $mjeseci_niz[11]="Studeni";
  $mjeseci_niz[12]="Prosinac";
  
  return $mjeseci_niz[$m];
}
$m = date('n');
echo mjesec($m);

echo '<br>';
echo '<hr>';
echo 'Zadatak 2.';
echo '<br>';
echo '<br>';

function tablica($imenaNiz)
{
    echo '<table border = "2">
            <tr>
            <th> Ime </th>
            <th> Prezime </th>
            </tr>';
    foreach($imenaNiz as $key => $ucenik)
    {
        echo '<td>'.$ucenik['ime'].'</td>
              <td>'.$ucenik['prezime'].'</td>
             </tr>';                
    }
    echo '</table>';
}

$ucenici = array();

$ucenici[1]['ime'] = "Bela";
$ucenici[1]['prezime'] = "Skenderović";

$ucenici[2]['ime'] = "Luka";
$ucenici[2]['prezime'] = "Skenderović";

tablica($ucenici);

echo '<br>';
echo '<hr>';
echo 'Zadatak 2. (drugi način)';
echo '<br>';
echo '<br>';

function tablica2()
{
    $ucenici = func_get_arg(0);

    echo '
<table border=2>
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

$imena = ['Bela', 'Skenderović', 'Luka', 'Skenderović', 'David', 'Skenderović'];

tablica2($imena);


echo '<br>';
echo '<hr>';
echo 'Zadatak 3.';
echo '<br>';
echo '<br>';

function zbroj($a,$b)
{
    return 'zbroj je '.($a+$b);
}

function razlika($a,$b)
{
    return 'razlika je '.($a-$b);
}

function umnozak($a,$b)
{
    return 'produkt je '.($a*$b);
}

function razlomak($a,$b)
{
    return 'količnik je '.($a/$b);
}


function skup($a,$b)
{
    echo zbroj($a,$b).'<br>';
    echo razlika($a,$b).'<br>';
    echo umnozak($a,$b).'<br>';
    echo razlomak($a,$b).'<br>';
}

$k=10;
$l=2;

skup($k,$l);

echo '<br>';
echo '<hr>';
echo 'Zadatak 4.';
echo '<br>';
echo '<br>';

function var_par()
{
    
    $par = func_get_args();
    
    foreach($par as $p)
    {
        if(is_int($p))
        {
            echo $p.' je broj <br>';
        }
        else
        {
            echo $p.' je string <br>';
        }
    }
}

echo var_par(1,4,"Bela",5,"Danijela");