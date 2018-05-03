<?php
$host='localhost'; //127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
mysql_set_charset($link, 'utf8');
if ($link) {
    echo 'Uspjesno povezanaa baza :-)'.'<br>';
} else {
    echo mysqli_connect_error();
    die('Neuspjela konekcija');
}
