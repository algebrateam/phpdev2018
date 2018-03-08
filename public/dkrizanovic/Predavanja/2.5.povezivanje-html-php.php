<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>
<div> sadrzaj neki</div>
<?php
echo 'Neki moj text iz php-a'.'<br>';
$a = 6;
$b = 4;
echo 'rezultat zbroja je: '.($a + $b);

$polje = ['1', '2', '3'];
print_r($polje);

$naziv_var = 'iznos';
$$naziv_var = 35;

echo $iznos;

$a = 'algebra';
$b = &$a;
echo $b;

echo '<hr>';
$b = 'nesto novo';
echo$a;

?>
</body>
</html>