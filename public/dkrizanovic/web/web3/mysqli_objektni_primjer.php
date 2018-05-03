<?php
include_once 'db_connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Proceduralni objekti mysqli</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <?php
            $query = "SELECT * FROM stud LIMIT 50";
            $result = $mysqli->query($query);
            while ($row = $result->fetch_assoc()) {
                echo " " . $row['imeStud'] . " " . $row['prezStud'];
            }

            echo "<hr>";
            echo $mysqli->affected_rows;
            ?>

        </div>
    </body>
</html>
<?php $mysqli->close(); ?>