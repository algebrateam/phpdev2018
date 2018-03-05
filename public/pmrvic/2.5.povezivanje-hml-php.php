<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>
<div>sadržaj neki </div>
<div style="color:red; background-color: cadetblue"><?php 

echo "Neki moj text is php-a"."<br>";
$a=6;
$b=4;
echo "rezultat zbroja je: ".($a+$b);
$c=99;
$c="škola";
echo "varijabla c je: ".(++$c);
$polje=array('1','2','3');
print_r($polje);
echo "<br>";
echo $polje[1];
echo $polje[2];

$naziv_var='iznos';
$$naziv_var=35;       // $($naziv_var)=35
echo $iznos;


/*
function catedblue(){
 return "#5F9EA0";
}*/
function red(){
 return "#FF0000";
}


$boja=red();
echo $boja;

echo "<hr>";

$a='Algebra';
$b=&$a;
echo $b;
$b= "nesto novo";
echo "a=".$a;
echo "b=".$b;
$a= " ### vrati na staro";
echo "a=".$a;
echo "b=".$b;

define('Naziv',777);
echo Naziv;

?></div>
<div style="color:red"><?= "Kratki zapis"?></div>
</body>
</html>