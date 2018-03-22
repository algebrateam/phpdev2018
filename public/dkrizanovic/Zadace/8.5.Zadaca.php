<?php

echo '8.5. Zadaca za ponavljanje';
echo '<br>';
echo '<br>';
echo '1. Napišite program koji čita sadržaj iz neke tekstualne datoteke.';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
echo '<br>';
$filename = 'kontakt.txt';
$handle = fopen($filename, 'r');
$contents = fread($handle, filesize($filename));
fclose($handle);
echo $contents;
echo '<hr>';
echo '<br>';
echo '2. Pripremite obrazac (formu) u koji korisnik upisuje neki tekt i nakon predavanja podataka tog obrasca zapiše tekst u neku datoteku.Ako datoteka ne postoji, napravite ju';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
$filename = 'kontakt.txt';
$handle = fopen($filename, 'a');
fwrite($handle, 'Danijel Krizanovic');
fclose($handle);
echo $contents;
echo '<hr>';
echo '<br>';
echo '3. Napišite program preko kojeg korisnik dohvaća sadržaj neke tekstualne datoteke, uređuje ga i ponovo sprema u istu datoteku.';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
$filename = 'kontakt.txt';
echo ' <form method="POST" action="">
 Tekst <textarea name="txt">';
$datoteka = file($filename);
foreach ($datoteka as $line_num => $line)
    ; {
    echo $line . "\n";
}
echo ' </textarea>
<br/>
<input type="submit" name="btn"value="Spremi"/>
        </form>';
if (isset($_POST["btn"])) {
    $handle = fopen($filename, 'a+');
    fwrite($handle, $_POST["txt"]);
    fclose($handle);
}
echo '<br>';
