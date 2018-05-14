<?php
$host = 'localhost';
$user = 'root';
$password = '';
$database = 'fakultet';
$mysqli = new mysqli($host, $user, $password, $database);

if ($mysqli) {
} else {
    
    die('Ne mozemo se zakaciti');
}
?>

