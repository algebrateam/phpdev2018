<!DOCTYPE html>
<html>
    <body>
         <h1>
            Zadaća 4.3
        </h1>

<?php
echo '1.';
echo '<br>';
echo 'Aritmetički operator je pod a. % koji se zove modul';
?>

<hr>

<?php
echo '2.';
echo '<br>';

$ime = 'Bela';
$prezime = 'Skenderović';

echo $ime.' '.$prezime;
?>
<hr>

<?php
echo '3.';
echo '<br>';
$a = 5;
$a++;
echo 'Povećana vrijednost <var>$a</var> je '.$a.'<br/>';

echo '<br>';

$a--;
echo 'Umanjena vrijednost povećane vrijednosti :) <var>$a</var> je '.$a.'<br/>';

?>
<hr>
<?php
echo '4.';
echo '<br>';

$a = 5;

$a = (float) $a;
echo $a;
?>
<hr>
<?php
echo '5.';
echo '<br>';

$a = 5;
$a += 5;

echo $a;
?>
<hr>
<?php
echo '6.';
echo '<br>';

$a = 7;
$b = 3;

echo $a.' + '.$b.' = '.($a + $b).'<br/>';
echo $a.' - '.$b.' = '.($a - $b).'<br/>';
echo $a.' * '.$b.' = '.($a * $b).'<br/>';
echo $a.' / '.$b.' = '.($a / $b).'<br/>';
echo $a.' % '.$b.' = '.($a % $b).'<br/>';

?>
<hr>

<?php
echo '7.';
echo '<br>';

$a = 4;
$b = 2;

echo $a.' + '.$b.' = '.($a + $b).'<br/>';
echo $a.' - '.$b.' = '.($a - $b).'<br/>';
echo $a.' * '.$b.' = '.($a * $b).'<br/>';
echo $a.' / '.$b.' = '.($a / $b).'<br/>';
echo $a.' % '.$b.' = '.($a % $b).'<br/>';

?>
<hr>
</body>
</html>