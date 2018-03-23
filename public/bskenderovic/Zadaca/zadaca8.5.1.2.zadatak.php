<?php

echo '8.5';
echo '<br>';
echo '<br>';
echo 'Zadatak 1. Napiši program koji čita sadržaj iz neke tekstualne datoteke';
echo '<br>';
echo '<br>';

$imefile = 'test.txt';

$handle = fopen($imefile, 'r');
$content = fread($handle, filesize($imefile));
fclose($handle);

echo $content.'<br>';

$datoteka = file($imefile);

foreach ($datoteka as $line_num => $line) {
    echo 'Linija #<b>'.$line_num.'</b>:'.$line.'</b>'.'<br>';
}

echo '<br>';
echo '<hr>';
echo 'Zadatak 2. Pripremite obrazac u koji korisnik upisuje neki tekst i nakon predavanja podataka tog obrasca apišite tekst u neku datoteku. Ako datoteka ne postoji napravi ju.';
echo '<br>';
echo '<br>';

echo '
<form method="POST" action="">
Tekst:<input type="text" name="txt" value="" /><br/>
<input type="submit" name="btn" value="Spremi" />
</form>';

if (isset($_POST["btn"])) {
    $fileime = 'drugi.txt';

    $handle = fopen($fileime, 'a+');

    fwrite($handle, $_POST["txt"]);

    fclose($handle);
}
