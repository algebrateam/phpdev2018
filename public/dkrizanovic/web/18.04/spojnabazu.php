<?php
$host='localhost';
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if ($link) {
} else {
    die('Neuspjela konekcija');
}

?>

<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Spoj na bazu pomoću mysqli</div>
        <hr>
        <div>
            <?php
            $query="SELECT * FROM stud";
$result= mysqli_query($link, $query);
echo "Broj studenata je:". mysqli_affected_rows($link);
?>
            
        </div>
        <hr>
        <div>
            Dohvacanje zapisa <br>
                      <?php
            $query="SELECT * FROM stud limit 5";
$result= mysqli_query($link, $query);
while ($row= mysqli_fetch_row($result)) {
    echo $row[0]." ".$row[1]." ".$row[2]." ".$row[3]."<br>";
}
echo "Pokusam unijeti jednog usera:". mysqli_affected_rows($link);
?>
            
        </div>
        
        <hr>
        <div>
            Dohvacanje zapisa 2<br>
                      <?php
            $query="SELECT * FROM stud limit 5";
$result= mysqli_query($link, $query);
while ($row= mysqli_fetch_array($result)) {
    echo 'Ime: '.$row["imeStud"]." ".'Prezime: '.$row[2]."<br>";
}

?>
            
        </div>
        
        <hr>
        <div>
            Dohvacanje zapisa 3<br>
                      <?php
            $query="SELECT * FROM stud limit 5";
$result= mysqli_query($link, $query);
while ($row= mysqli_fetch_assoc($result)) {
    echo 'Ime: '.$row["imeStud"]." ";
    echo 'Prezime: '.$row["prezStud"]." ";
    echo 'Maticni broj: '.$row["jmbgStud"]."<br>";
}

?>
            
        </div>
    </body>
</html>
