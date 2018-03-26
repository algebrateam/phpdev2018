<?php

echo 'Zadatak 1<br>';
$filename = 'kontakt.txt';

$handle = fopen($filename, 'r');
$contents = fread($handle, filesize($filename));
fclose($handle);

echo $contents;

echo '<br><br>Zadatak 2<br>';
echo'
<form method="POST" action="">
    Tekst: <input type="text" name="txt" value=""/><br/>
    <input type="submit" name="btn" value="Spremi"/>
</form>';

if (isset($_POST["btn"])) {
    $filename='kontakt.txt';
    $handle=fopen($filename, 'a+');
    fwrite($handle, $_POST["txt"]);
    fclose($handle);
}

echo '<br><br>Zadatak 3<br>';
$filename='kontakt.txt';

echo '
<form method="POST" action="">
Tekst: <textarea name="txt">';

$datoteka=file($filename);

foreach ($datoteka as $line_num => $line) {
    echo $line."\n";
}

echo '
</textarea>
<br/>
<input type="submit" name="btn" value="Spremi"/>
</form>';

if (isset($_POST["btn"])) {
    $handle=fopen($filename, 'a+');
    fwrite($handle, $_POST["txt"]);
    fclose($handle);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
