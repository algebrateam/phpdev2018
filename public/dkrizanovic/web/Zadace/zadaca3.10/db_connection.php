<?php

$host = 'localhost';
$user = 'root';
$password = '';
$database = 'fakultet';
$link = mysqli_connect($host, $user, $password, $database);
mysqli_set_charset($link, 'utf8');
if ($link) {
} else {
    die('Neuspjela konekcija');
}
