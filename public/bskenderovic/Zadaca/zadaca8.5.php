<?php

echo '7.8';
echo '<br>';
echo '<br>';
echo 'Zadatak 1.';
echo '<br>';
echo '<br>';

$file = 'test.txt';

$handle = fopen($file,'r');
$content = fread($handle,filesize($file));
fclose($handle);

echo $content.'<br>';

$datoteka = file($file);

foreach ($datoteka as $line_num => $line)
{
    echo 'Linija #<b>'.$line_num.'</b>:'.$line.'</b>'.'<br>';
}

echo '<br>';
echo '<hr>';
echo 'Zadatak 2.';
echo '<br>';
echo '<br>';