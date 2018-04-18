<!DOCTYPE html>
<html>
    <head>
        <title>skripta PHP</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
<?php
    for ($i=1; $i<=5; $i++) {
        echo '<a href="1.6_3.skripta.php?broj='.$i.'" target="_self">link '.$i.'.php</a><br>';
    }
     if (isset($_GET['broj'])) {
         echo 'Odabrali ste:'.$_GET['broj'];
     }
?>

        </div>
    </body>
</html>

