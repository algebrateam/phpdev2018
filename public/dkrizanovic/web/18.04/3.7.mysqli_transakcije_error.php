<?php

include 'db_connection.php';

$error_num = 0;

$query="BEGIN";
$result = mysqli_query($link, $query);

$query="INSERT INTO `fakultet`.`mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES ('99004', 'Nesto1', '0')";
//$query.="VALUES ('99001','Zadar_novi',13)";
$result=mysqli_query($link, $query);

if (!$result) {
    $error_num++;
    echo "Broj gresaka je X:".$error_num;
}

$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija) ";
$query.="VALUES ('99001','Rijeka_novi',8)";
$result=mysqli_query($link, $query);

if ($error_num <= 0) {
    $query="COMMIT";
    echo "Broj gresaka je:".$error_num;
} else {
    $query="ROLLBACK";
    echo "Broj gresaka je:".$error_num;
}

$result = mysqli_query($link, $query);



?>


