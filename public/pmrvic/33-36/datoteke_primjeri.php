<?php

$myfile = fopen("newfile.txt", "w") or die("Unable to open file!");
$txt = "John Doe XXXXHHFKFNM\n";
fwrite($myfile, $txt);
$txt = "Jane Doe  SDFSDFGSD\n";
fwrite($myfile, $txt);
fclose($myfile);

