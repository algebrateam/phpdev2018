<?php
function sljedeci()
{
    echo '<hr><br>';
}


echo 'Zadatak 1.<br><br>';
$filename='8.5.citaj.txt';
$handle= fopen($filename, 'r');
$sadrzaj= fread($handle, filesize($filename));
fclose($handle);
echo $sadrzaj;
sljedeci();

echo 'Zadatak 2.<br><br>';
$sadrzaj=fread($handle, filesize('8.5.pisi.txt'));
?>





<form method="post" action="funkcije.php">  
  <textarea name="text" id= text rows="5" cols="40"></textarea>
  <br><br>
  <input type="submit" value="Submit">  
</form>