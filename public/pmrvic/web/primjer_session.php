<?php 
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
    <div>Šaljem session</div>
    
    <?php 
    
    $_SESSION['broj_af']=5;
    $_SESSION['user']='Pero';
    $_SESSION['pass']='123';
    
    //$_SESSION['brojevi']=[1,2,3,4,5];
    $_SESSION['brojevi']=array(1,2,3,4,5);
    
    print_r($_SESSION);
    ?>
    <a href="primjer_session_received.php">šalji!</a>
  </body>
</html>


