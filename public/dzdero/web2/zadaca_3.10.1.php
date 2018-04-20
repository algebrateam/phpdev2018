<?php
$host='localhost'; //127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if ($link) {
    echo 'Uspjesno povezivanje na bazu :-)';
} else {
    die('Neuspjela konekcija');
}


?>

<!DOCTYPE html>
<html>
    <head>
        <title>Zadaca 3.10.1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div style="font-size: 20px; text-align: center;"><br /><strong>Zadaća</strong></div>
        <hr>
        
       
       
        <div><strong>3.10.1 - Studenti imena Ivan:</strong><br>
            <?php
            $query="select * from stud where imeStud='Ivan'";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_row($result)) {
                echo $row[1].' '.$row[2].'<br>';
            }
            ?>
        </div>
        <div><br><strong>3.10.1 - JMBG i prezime studenata imena Ivan:</strong><br>
            <?php
            $query="select * from stud where imeStud='Ivan'";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_row($result)) {
                echo $row[6].', '.$row[2].'<br>';
            }
            ?>
        </div>
        <hr>
        <div><strong>3.10.2 - svi predmeti abecednim redom:</strong><br>
            <?php
            $query="select nazPred from pred group by nazPred";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_assoc($result)) {
                echo $row["nazPred"].'<br>';
            }
            ?>
        </div>
        <hr>
        <div><strong>3.10.3 - svi studenti sa prezimenom na B:</strong><br>
            <?php
            $query="select imeStud, prezStud from stud where left(prezStud,1) in ('b') order by prezStud;";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_assoc($result)) {
                echo $row["imeStud"].' ';
                echo $row["prezStud"].'<br>';
            }
            ?>
        </div>
        <hr>
        <div><strong>3.10.4 - svi studenti rođeni u Zagrebu:</strong><br>
            <?php
            $query="select * from stud s join mjesto m on s.pbrRod=pbr where nazMjesto='Zagreb' order by prezStud";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_assoc($result)) {
                echo $row["imeStud"].' ';
                echo $row["prezStud"].'<br>';
            }
            ?>
        </div>
        <hr>
        <div><strong>3.10.5 - broj studenata sa imenom na A:</strong><br>
            <?php
            $query="select * from stud where left(imeStud,1) in ('a')";
            $result= mysqli_query($link, $query);
            echo 'Broj studenata je: '. mysqli_affected_rows($link);
            ?>
        </div>
        <hr>
        <div><strong>3.10.6 - broj nastavnika sa prezimenom na M:</strong><br>
            <?php
            $query="select count(prezNastavnik) from nastavnik_ime_prezime where left(prezNastavnik,1) in ('m')";
            $result= mysqli_query($link, $query);
            while ($row= mysqli_fetch_assoc($result)) {
                echo 'Broj nastavnika je: '. $row["count(prezNastavnik)"];
            }
            ?>
        </div>
        
        
    </body>
</html>
<?php
