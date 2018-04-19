<?php
$host='localhost';  // 127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if ($link) {
} else {
    die('Neuspjela konekcija!');
}


$query= "BEGIN";
$result= mysqli_query($link, $query);

$query= "INSERT INTO mjesto(pbr, nazMjesto, sifZupanija)"
        . "VALUES ('23000', 'Zadar', 13)";
$result= mysqli_query($link, $query);

$query= "INSERT INTO mjesto(pbr, nazMjesto, sifZupanija)"
        . "VALUES ('68000', 'Rijeka', 8)";
$result= mysqli_query($link, $query);

$query= "COMMIT";
$result= mysqli_query($link, $query);
