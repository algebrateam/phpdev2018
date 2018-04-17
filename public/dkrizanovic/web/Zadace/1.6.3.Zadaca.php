<!DOCTYPE html>

<html>
    <head>
        <title>Zadaca1.6</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <a href="link1.php" target="_blank">link1.php</a>
        <div>
            <?php
            for ($index = 1; $index <=5; $index++) {
                printf('<a href="?broj=%s" target="_self">%s.php</a> <br>', $index, $index);
            }
            echo "<hr>";
            if (isset($_GET['broj'])) {
                echo "Odabrali ste: ".$_GET['broj'];
            }
            ?>
        </div>
    </body>
</html>
