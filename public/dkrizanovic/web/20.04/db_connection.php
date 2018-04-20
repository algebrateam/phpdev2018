<?php
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'fakultet';
$link = mysqli_connect($host, $user, $password, $database);
if ($link) {
} else {
    echo mysqli_connect_error();
    die('Neuspjela konekcija');
}
?>


