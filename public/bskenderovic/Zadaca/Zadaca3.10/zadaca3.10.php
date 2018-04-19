<?php
include 'db_connection.php';


echo "Zadatak 1"." <br>";
echo "Potrebno dohvatiti sve studente s imenom Ivan i ispisati njihove matične brojeve i prezimena.";
echo "<br>";

$query = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud = 'Ivan'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Mbr: " . $row["mbrStud"]. " Ime: " . $row["imeStud"]. " Prezime: " . $row["prezStud"]. "</p>";
    }
} else {
    echo "0 results";
}
echo "<hr>";
echo "Zadatak 2"." <br>";
echo "Potrebno dohvatiti sve predmete i ispisati ih abecednim redom.";
echo "<br>";

$query = "SELECT * FROM fakultet.pred ORDER BY pred.nazPred ASC";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Predmet: " . $row["nazPred"]. "</p>";
    }
} else {
    echo "0 results";
}
echo "<hr>";
echo "Zadatak 3"." <br>";
echo "Potrebno dohvatiti sve studente čije prezime počinje s slovom B i ispisati njihova imena i prezimena.";
echo "<br>";

$query = "SELECT stud.imeStud, stud.prezStud FROM fakultet.stud WHERE stud.prezStud LIKE 'B%'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Ime: " . $row["imeStud"]. " / Prezime: " . $row["prezStud"]. "</p>";
    }
} else {
    echo "0 results";
}

mysqli_close($link);
