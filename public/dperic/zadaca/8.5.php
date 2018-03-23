<?php
echo '8.5. ';
echo '<br>';
echo '<br>';
echo '1. .';
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
echo '2. ';
echo '<br>';
echo '<br>';
echo 'Rješenje:';
$filename = 'kontakt.txt';
$handle = fopen($filename, 'a');
fwrite($handle, 'Peric');
fclose($handle);
echo $contents;
echo '<hr>';
echo '<br>';
echo '3.';
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

   