<?php
/**
 * 24.
 * Objasniti pojam funkcije. Prikazati kako se definira funkcija.
 * Prikazati kako se poziva funkcija. Objasniti funkcije sa i bez
 * ključne riječi return. Detaljno objasniti koja je razlika
 * između return i metoda koje ispisuju izlaz na ekran (echo,
 * print). Prikazati kako koristiti varijable s tekstom za
 * pozivanje funkcije.
 */
?>




<!DOCTYPE html>
<html>
<head>
	<title></title>
	<style type="text/css">

td:nth-child(even) {background: #FFBFBF}
td:nth-child(odd) {background: #FFF}

	</style>
</head>
<body>

<?php
////// FUNKCIJE

/*
<povratni_tip> <ime_funkcije>([argument1],[argument2]){
<tijelo funkcije>
}
*/

function br_bac(){
    echo "<br>";
   echo ' <p>';
    echo '
public	update zadace 6.7	8 hours ago
tests	Apply fixes from StyleCI	11 days ago
.env.travis	Create .env.travis	15 days ago
.gitignore	vracen .gitignore	12 minutes ago
.scrutinizer.yml	scrutinizer config	4 days ago
.styleci.yml	promjenio styleCI na psr2 fixer	4 days ago
.travis.yml	HeROKU pokusaj build	5 days ago
LICENSE	prvi hello world	19 days ago
Procfile	dodao .htaccess za directory listing	4 days ago
README.md	Update README.md	3 days ago
Tablica.php	test heroku bez STYLECI	4 days ago
composer.json	Dodao prazan composer.json ka';
    
    echo '</p>';
}
echo "Poziv funkcije br()";


function br($broj_novih_redova)
{
    
//    for($i=0;$i<$broj_novih_redova;$i++){
//        echo "<br>  ....---->".$i;
//    }
    echo str_repeat('<br>', $broj_novih_redova);
}
br(5);


function linija()
{
    echo '<hr>';
}
$timestamp = time();

echo "<br> kao timestamp ispis vremena $timestamp";
echo '<br> kao date:'.gmdate("Y/m/j H:i:s",$timestamp +3600*1); // dodaj 1 sat


$nizslova = 'neko južno voće';
$nekiarray = ['plava', 'zuta', 'crvena'];

mojispis($nizslova);

br(4);

mojispis($nekiarray);
br(3);
mojispis($nekiarray);
mojispis($nekiarray);
br(1);
mojispis($nekiarray);

function mojispis($ulaz)
{
    if (!is_array($ulaz)) {
        echo '<br>'.$ulaz;
    } else {
        echo '<pre>';
        print_r($ulaz);
        echo '</pre>';
    }
}

br(2);
linija();
echo 'ispis datuma';
br(1);
//$datum = date('L', (1457036291 - 365 * 24 * 60 * 60));
$datum = date('L', time()+2*365*24*60*60);
echo 'Ako je prijestupna ispise 1:'.$datum;
////////////////

function ispis_tablice($ulaz)
{
    echo "<table border='1'>";
    foreach ($ulaz as $key => $value) {
        echo "
		<tr>
           <td>$key</td>
           <td>$value</td>
           <td>Nesto bezvetze</td>
           <td>Nesto bezvetze</td>
           <td>Nesto bezvetze</td>
            <td>Nesto bezvetze</td>          
	     </tr>
        ";
    }
    echo '</table>';
}

$juznovoce = ['mango', 'kokos', 'banana'];
ispis_tablice($juznovoce);

br(5);

$fruits = [0       => 'limun',
                'a'=> 'naranca',
                  1 => 'banana',
                'b'=> 'jabuka',
                7  => 'banana',
                2  => 'grejp', ];

ispis_tablice($fruits);

///// KRAJ
br(15);
?>



</body>
</html>