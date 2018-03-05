
 <!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>
<div>sadržaj neki</div>
<div style="color:red"
    <?php echo "neki moj text iz PHP-a"."<br>";
$a=6;
$b=4;
echo "rezultat zbroja je: ".($a+$b)."<br>";
$c=99;    
echo "varijabla c je: ".$c."<br>";
echo "varijabla c je: ".(++$c)."<br>";
$polje=array('1','2','3');
print_r($polje);
echo "<br>";
echo $polje[1];
echo $polje[2];

echo "<br>";
$naziv_var='iznos';
$$naziv_var=35;    //$(naziv_var)=35
echo $iznos;

echo "<hr>";


  $a='Algebra';
  $b=&$a;
  echo $b;
  $b="nesto novo";
  echo "a=".$a;
  echo "b=".$b;

  
  define('Naziv', 777);
  echo Naziv;

?>
     
</div>
<div style="color:red">kratki zapis</div>
</body>
</html> 


/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

