<?php
echo "sdfasdf";
session_start();
?>

<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div>Primam session</div>
    
    <a href="primjer_session.php">vrati me natrag</a>
    
    <?php
    print_r($_SESSION);
    $_SESSION['evo_i_od_mene']='123abc';
    ?>
  </body>
</html>


