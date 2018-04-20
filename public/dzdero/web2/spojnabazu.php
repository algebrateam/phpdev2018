<?php
$host='localhost'; //127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if($link){
    echo 'Uspjesno povezivanje na bazu :-)';
}
 else {
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
        <div>spoj na bazu pomocu mysqli</div>
        <hr>
        <div>
            <?php
            $query="select * from stud";
            $result= mysqli_query($link, $query);
            echo 'Broj studenata je:'. mysqli_affected_rows($link);
            ?>
        </div>
        <hr>
        <div>Pokusaj inserta:<br>
            <?php
            $query="INSERT INTO `mjesto` (`pbr`, `nazMjesto`, `sifZupanija`) VALUES ('21261', 'Runovići', '17')";
            $result= mysqli_query($link, $query);
            echo "Pokusam unjeti jedno mjesto:". mysqli_affected_rows($link);
            ?>
        </div>
        <hr>
        <div>Dohvaćanje zapisa:<br>
            <?php
            $query="select * from stud limit 5";
            $result= mysqli_query($link, $query);
            while($row= mysqli_fetch_row($result)){
                echo $row[1].' '.$row[2].'<br>';
            }
            ?>
        </div>
        <hr>
        <div>Dohvaćanje zapisa 2:<br>
            <?php
            $query="select imeStud as ime,prezStud as prezime from stud limit 5";
            $result= mysqli_query($link, $query);
            while($row= mysqli_fetch_assoc($result)){
                echo 'ime:'.$row["ime"].', ';
                echo 'prezime:'.$row["prezime"].'<br>';
            }
            ?>
        </div>
        <hr>
        <div>Dohvaćanje zapisa 3:<br>
            <?php
            $query="select imeStud,prezStud from stud limit 5";
            $result= mysqli_query($link, $query);
            echo '
            <table border="1">
            <tr>
            <td>Ime</td>
            <td>Prezime</td>
            </tr>';
            while($row= mysqli_fetch_assoc($result)){
                echo '
                <tr>
                <td>'.$row["imeStud"].'</td>
                <td>'.$row["prezStud"].'</td>
                        </tr>';
            }
            echo '</table>';
            ?>
        </div>
    </body>
</html>
<?php
