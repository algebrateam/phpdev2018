<?php
include 'db_connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Zadaca 3.10</title>
        <meta HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <?php
            echo "Zadatak 1" . " <br>";
            echo "Potrebno dohvatiti sve studente s imenom Ivan i ispisati njihove matične brojeve i prezimena.";
            echo "<br>";

            $query = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud = 'Ivan'";
            $result = mysqli_query($link, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<p>Maticni broj: " . $row["mbrStud"] . ", Ime: " . $row["imeStud"] . ", Prezime: " . $row["prezStud"] . "</p>";
            }

            echo "<hr>";
            echo "Zadatak 2" . " <br>";
            echo "Potrebno dohvatiti sve predmete i ispisati ih abecednim redom.";
            echo "<br>";

            $query = "SELECT * FROM fakultet.pred ORDER BY pred.nazPred ASC";
            $result = mysqli_query($link, $query);
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<p>Predmet: " . $row["nazPred"] . "</p>";
            }
            echo "<hr>";
            echo "Zadatak 3" . " <br>";
            echo "Potrebno dohvatiti sve studente čije prezime počinje s slovom B i ispisati njihova imena i prezimena.";
            echo "<br>";
            $query = "SELECT stud.imeStud, stud.prezStud FROM fakultet.stud WHERE stud.prezStud LIKE 'B%'";
            $result = $link->query($query);
            while ($row = $result->fetch_assoc()) {
                echo "<p>Prezime: " . $row["prezStud"] . ",   Ime: " . $row["imeStud"] . "</p>";
            }
            echo "<hr>";
            echo "Zadatak 4" . " <br>";
            echo "Potrebno dohvatiti sve studente rođene u Zagrebu i ispisati njihova imena i prezimena.";
            echo "<br>";
            $query = "SELECT stud.imeStud, stud.prezStud, mjesto.nazMjesto FROM fakultet.stud INNER JOIN fakultet.mjesto ON stud.pbrRod = mjesto.pbr WHERE mjesto.nazMjesto = 'Zagreb'";
            $result = $link->query($query);
            while ($row = $result->fetch_assoc()) {
                echo "<p>Ime: " . $row["imeStud"] . ",  Prezime: " . $row["prezStud"] . "</p>";
            }
            echo "<hr>";
            echo "Zadatak 5" . " <br>";
            echo "Napraviti aplikaciju koja će pomoću PHP funkcije mysql_num_rows ispisati koliko studenata iz tablice stud ima ime koje počinje s A.";
            echo "<br>";

            $query = "SELECT stud.imeStud FROM fakultet.stud WHERE stud.imeStud LIKE 'A%'";
            $result = $link->query($query);
            echo "<br>";
            $brojredova = mysqli_num_rows($result);
            printf("Broj studenata kojima počinje ime sa slovom A je %d.\n", $brojredova);
            ?>
        </div>
    </body>
</html>
