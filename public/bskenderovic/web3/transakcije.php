<?php

include 'db_connection.php';

$error_num = 0;

$query="BEGIN";
$result = mysqli_query($link, $query);

$query="INSERT INTO `fakultet`.`mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES ('99005', 'proba', '0')";
//$query.="VALUES ('99001','Zadar_novi',13)";
$result=mysqli_query($link, $query);
print_r(mysqli_error_list($link));
echo mysqli_error($link);


if (!$result) {
    $error_num++;
    echo "Broj gresaka je X:".$error_num;
}

$query="INSERT INTO `fakultet`.`mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES ('99006', 'proba2', '0')";
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


