<?php
$filename='8.5.pisi.txt';
$handle= fopen($filename, 'w');
$za_upis = $_GET["text"];
fwrite($handle, $za_upis);
fclose($handle);


function pisi($text)
{
    $filename='8.5.pisi.txt';
    $handle= fopen($filename, 'w');
    fwrite($handle, $text);
    fclose($handle);
}
