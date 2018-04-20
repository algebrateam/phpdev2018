<?php
include("db_connection.php");

$query="BEGIN";
$result= mysqli_query($link, $query);
$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija) ";
$query.="VALUES('2300','Zadar',13)";
$result= mysqli_query($link, $query);

$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija) ";
$query.="VALUES('51000','Rijeka',8)";
$result= mysqli_query($link, $query);

$query="INSERT INTO mjesto(pbr,nazMjesto,sifZupanija) ";
$query.="VALUES('10001','Zagreb',21)";
$result= mysqli_query($link, $query);

$query="COMMIT";
$result= mysqli_query($link, $query);
