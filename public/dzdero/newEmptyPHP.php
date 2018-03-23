<?php

       


echo 'Zadatak 3.<br><br>';
function upisi(){
$filename='8.5.upisi.txt';
$handle= fopen($filename,'a');
//$za_upis=$_GET["sadrzaj"];
fwrite($handle, $sadrzaj);
fclose($handle);
}
?>
<form action="<?php upisi();?>">  
  <textarea name="sadrzaj" rows="5" cols="40"><?php $sadrzaj?></textarea>
  <br><br>
  <input type="submit" value="Submit">  
</form>