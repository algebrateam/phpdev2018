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
</html>
        
            <?php

$mysqli = new mysqli('localhost', 'fakultet', 'fakultet', 'fakultet');

if (mysqli_connect_errno()) {
    echo 'Doslo je do pogreske';
    echo mysqli_connect_error();
    exit();
}

$query_tpl = "SELECT pbr FROM mjesto WHERE nazMjesto = ?";

$naziv = "Zagreb";

if ($stmt = $mysqli ->prepare($query_tpl)) {
    $stmt->bind_param('s', $naziv);


    $stmt->execute();

    $stmt->bind_result($pbr);

    $stmt->fetch();

    echo $pbr;

    $stmt->close();
}
$mqsqli->close();
?>



