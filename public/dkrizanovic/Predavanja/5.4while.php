<?php

$zbroj = 0;
$i = 1;
while ($i <= 1000) {
    $zbroj += $i;
    if ($zbroj >= 100000) {
        $zbroj -= $i;
        $i--;
        break;
    }
    $i++;
}
echo $zbroj.'<br>';
echo 'stali smo kod broja '.$i.' <br>';
