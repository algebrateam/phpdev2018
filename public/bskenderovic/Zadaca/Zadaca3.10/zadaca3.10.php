<?php
include 'db_connection.php';
echo "Zadatak 1"." <br>";
echo "Potrebno dohvatiti sve studente s imenom Ivan i ispisati njihove matične brojeve i prezimena.";
echo "<br>";
$query = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud = 'Ivan'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Mbr: " . $row["mbrStud"]. ", Ime: " . $row["imeStud"]. ", Prezime: " . $row["prezStud"]. "</p>";
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
        echo "<p>Ime: " . $row["imeStud"]. ",   Prezime: " . $row["prezStud"]. "</p>";
    }
} else {
    echo "0 results";
}
echo "<hr>";
echo "Zadatak 4"." <br>";
echo "Potrebno dohvatiti sve studente rođene u Zagrebu i ispisati njihova imena i prezimena.";
echo "<br>";
$query = "SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto FROM fakultet.stud INNER JOIN fakultet.mjesto ON stud.pbrRod = mjesto.pbr WHERE mjesto.nazMjesto = 'Zagreb'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Ime: " . $row["imeStud"]. ",  Prezime: " . $row["prezStud"]. ",   Mjesto: " . $row["nazMjesto"]. "</p>";
    }
} else {
    echo "0 results";
}
echo "<hr>";
echo "Zadatak 5"." <br>";
echo "Napraviti aplikaciju koja će pomoću PHP funkcije mysql_num_rows ispisati koliko studenata iz tablice stud ima ime koje počinje s A.";
echo "<br>";
$query = "SELECT stud.imeStud FROM fakultet.stud WHERE stud.imeStud LIKE 'A%'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    echo "<br>";
    $brojred=mysqli_num_rows($result);
    printf("Broj studenata kojima počinje ime sa slovom A je %d.\n", $brojred) ;
} else {
    echo "0 results";
}
echo "<hr>";
echo "Zadatak 6"." <br>";
echo"Napisati program koji pomoću SQL funkcije COUNT prebrojava nastavnike čije prezime počinje slovom M i ispisuje taj broj.";
echo "<br>";
$query = "SELECT COUNT(nastavnik.imeNastavnik) as brojnast FROM fakultet.nastavnik WHERE nastavnik.prezNastavnik LIKE 'M%'";
$result = $link->query($query);
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<p>Ukupan broj nastavnika čije prezime počinje s M je: " . $row["brojnast"]. "</p>";
    }
}
mysqli_close($link);