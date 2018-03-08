<?php

echo(2 + 3 * 4).'<br>';
echo '37%4=';
echo 37 % 4;
echo '<hr>';
$brojevi = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
foreach ($brojevi as $value) {
    if ($value % 2 == 0) {
        echo $value.'je paran broj <br>';
    } else {
        echo $value.' je neparan broj <br>';
    }
}

echo '<hr>';

$var = 25;
echo 'var je='.$var;
echo 'uvećani var je='.++$var; //$var=$var+1;
echo 'sigurno uvećani var je= '.$var;
