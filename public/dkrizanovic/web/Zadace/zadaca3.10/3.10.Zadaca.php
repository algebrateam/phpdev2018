<?php
include 'db_connection.php';
echo "Zadatak 1"." <br>";
echo "Potrebno dohvatiti sve studente s imenom Ivan i ispisati njihove matične brojeve i prezimena.";
echo "<br>";

$query = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud = 'Ivan'";
$result= mysqli_query($link,$query);
while ($row= mysqli_fetch_assoc($result)){
 echo "<p>Maticni broj: " . $row["mbrStud"]. ", Ime: " . $row["imeStud"]. ", Prezime: " . $row["prezStud"]. "</p>";
}