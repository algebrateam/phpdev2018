<?php

echo '<br>';
echo 'Zadatak 3. Napišite program preko kojeg korisnik dohvaća sadržaj neke tekstualne datoteke, uređuje ga i ponovno sprema u istu datoteku';
echo '<br>';
echo '<br>';

$treci = 'treci.txt';

echo'
<form method="POST" action="">
Tekst:
<textarea name="txt">';

$datoteka = file($treci);

foreach($datoteka as $line_num => $line)
{
    echo $line."\n";
    
}

echo'
</textarea>
<br/>
<input type="submit" name="btn" value="Spremi" />
</form>';

if(isset($_POST["btn"]))
{
    $handle = fopen($treci,'a+');
    fwrite($handle,$_POST["txt"]);
    fclose($handle);
}

