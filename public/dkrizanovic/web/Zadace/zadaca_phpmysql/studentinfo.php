<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Studenti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div style="background-color:lightblue">

            <?php
            $name = intval($_GET['name']);
            $query = "SELECT * FROM stud WHERE mbrStud = '" . $name . "'";
            $result = $mysqli->query($query);
            ?>
            <table class="w3-table-all w3-card-4 w3-hoverable">  

                <thead>
                    <tr><th>Matični Broj</th><th>Ime</th><th>Prezime</th><th>Datum rođenja</th><th>Jmbg</th></tr>
                </thead>
                <tbody> 
                    <!-- početak repeatera -->
<?php while ($row = $result->fetch_assoc()) {
                ?>   
                        <tr>
                            <td><?= $row['mbrStud'] ?></td>
                            <td><?= $row['imeStud'] ?></td>
                            <td><?= $row['prezStud'] ?></td>
                            <td><?= $row['datRodStud'] ?></td>
                            <td><?= $row['jmbgStud'] ?></td>
                        </tr> 
    <?php
            }
?> <!-- kraj repeatera -->
                </tbody>     
            </table>



        </div>
        <br/>
        <a href="studenti.php"> Povratak na početnu </a>
    </body>
</html>
<?php $mysqli->close(); ?>