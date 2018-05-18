<?php
include_once './dbconn.php';
?>

<!DOCTYPE html>
<html>
    <head>
    <a href="index.php"> << Natrag</a>
    <br>
    <br>
    <br>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body
    <h1>Dvorana: 
            <?php echo $_GET['dvorana'];
            ?>
    </h1>
    <div>

        <?php
        $query = "SELECT oznVrstaDan,sat,nazPred FROM rezervacija inner join pred on rezervacija.sifPred = pred.sifPred where oznDvorana=?";

        if ($stmt = $mysqli->prepare($query)) {
            $stmt->bind_param('s', $_GET['dvorana']);
            $stmt->execute();
            $stmt->bind_result($oznVrstaDan, $sat, $nazPred);
            ?>



        </div> 

        <table class="w3-table-all w3-card-4 w3-hoverable">  

            <thead>
                <tr><th>Dan</th><th>Sat</th><th>Naziv predmeta</th></tr>
            </thead>
            <tbody> 
                <!-- početak repeatera -->
                <?php
                while ($stmt->fetch()) {
                    echo "<tr>";
                    echo "<td>" . $oznVrstaDan . "," . "</td>";
                    echo "<td>" . $sat . ":00," . "</td>";
                    echo "<td>" . $nazPred . "</td>";
                }
                $stmt->close();
            }
            $mysqli->close();
            ?>

           
        </tbody>   

</body>
</html>



