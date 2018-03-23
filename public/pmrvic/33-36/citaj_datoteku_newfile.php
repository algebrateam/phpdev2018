<?php

$handle= fopen('newfile.txt', 'r');

$contetnt= fread($handle, 2);

$contetnt= fread($handle, filesize('newfile.txt'));
fclose($handle);

echo $contetnt;
