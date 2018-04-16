<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            for ($i=1; $i<=5; $i++) {
                echo '<a href="skripta.php?broj='.$i.'">'.$i.'</a><br />';
            }
        // put your code here
        if (isset($_GET['broj'])) {
            echo 'Odabrali ste broj: '.$_GET['broj'];
        }
        ?>
    </body>
</html>
