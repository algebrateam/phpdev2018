<?php
$filename = 'tekst.txt';
$handle = fopen($filename, 'w');
$za_upis = $_GET["sadrzaj"];
fwrite($handle, $za_upis);
fclose($handle);
echo '<script type="text/javascript">
    location.replace("Zadaca 8.5.php");
</script>';
//echo '<a href="Zadaca 8.5.php">Podaci su upisani u datoteku tekst.txt, pritisni za povratak</a>';
