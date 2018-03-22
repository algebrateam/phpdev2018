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
$contents=fread($handle, filesize($filename));
fclose($handle);
        echo $contents;
echo '<hr>' ;
echo '<br>';