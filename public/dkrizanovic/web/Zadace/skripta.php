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
            for ($index = 1; $index <=5; $index++)
            {
                printf('<a href="link%s.php" target="_blank">link%s.php</a> <br>', $index,$index);
            }
            ?>
        </div>
    </body>
</html>
