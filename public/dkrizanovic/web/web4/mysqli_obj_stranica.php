<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Stranica sa primjerima html komponenti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <div>
            <?php
            $query = "SELECT * FROM stud LIMIT 5";
            $result = $mysqli->query($query);
            ?>
            <table class="w3-table-all w3-hoverable" style="width:300px">
                <thead>
                    <tr><th>Ime</th><th>Prezime</th></tr>
                </thead>
                <tbody>
                    <?php while ($row = $result->fetch_assoc()) {
                ?>      
                        <tr>
                            <td><?= $row['imeStud'] ?></td>
                            <td><?= $row['prezStud'] ?></td>
                        </tr>   
                    <?php
            } ?>
                </tbody>
            </table>       
        </div>
    </body>
</html>
