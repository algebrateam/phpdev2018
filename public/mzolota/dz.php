<?php
echo "<br>drugi zadatak";
echo '
    <form method ="POST" action = "">
    Tekst: <input type = "text" name ="txt" value="" /><br />
    <input type ="submit" name="btn" value="Spremi" />
    </form>';

if (isset($_POST["btn"])) {
    $filename= 'ucenici.txt';
    $handle = fopen($filename, 'a+');
    fwrite($handle, $_POST["txt"]);
    fclose($handle);
}




echo "<br>treci zadatak<br>";

$filname = 'ucenici.txt';

echo'
<form method = "POST" action="">
Tekst:
<textarea name ="txt">';

$datoteka = file($filename);

foreach ($datoteka as $line_num => $line) {
    echo $line."\n";
}

echo '
</textarea>
<br />
<input type="submit" name="btn" value="Spremi" />
</form>';

if (isset($_POST["btn"])) {
    $handle = fopen($filename, 'a+');
    fwrite($handle, $_POST["txt"]);
    
    fclose($handle);
}
