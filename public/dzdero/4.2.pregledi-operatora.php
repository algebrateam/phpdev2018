<?php

echo 2 + 3 * 4;
echo '<br>';
echo(2 * 3 + 4).'<br>';
echo(2 + 3) * 4;

echo '<hr>';
echo '1%1=';
echo 1 % 1;
echo '<br>';
echo '7%5=';
echo 7 % 5;
echo '<br>';
echo '37%4=';
echo 37 % 4;

echo '<hr>';

$brojevi = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
foreach ($brojevi as $value) {
    if ($value % 2 == 0) {
        echo $value.' je paran broj <br>';
    } else {
        $value.'je neparan broj <br>';
    }
}
