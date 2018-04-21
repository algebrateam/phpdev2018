<?php

include 'db_connection.php';
?>

<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
      <div>
          <?php
          $query_tpl="SELECT pbr FROM mjesto WHERE nazMjesto=?";
          $naziv="Zagreb";
          if ($stmt = $mysqli->prepare($query_tpl)) {
              $stmt->bind_param('s', $naziv);
              $stmt->execute();
              $stmt->bind_result($pbr);
              $stmt->fetch();
              echo $pbr;
              $stmt->close();
          }
          ?>
          
      </div>
    <hr>
        
  </body>
        
</html>
<?php
$mysqli->close();
?>