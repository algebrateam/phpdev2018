<?php
$host='localhost';  // 127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if($link){}
else {
   die('Neuspjela konekcija!');
}
?>
