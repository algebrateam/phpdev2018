<?php
$host='localhost'; //127.0.0.1
$user='root';
$password='';
$database='fakultet';
$mysqli=new mysqli($host, $user, $password, $database);
//mysql_set_charset($link, 'utf8');
if ($mysqli) {
    echo 'Uspjesno povezana baza :-)'.'<br>';
} else {
    // echo mysqli_connect_error();
    die('Neuspjela konekcija');
}
