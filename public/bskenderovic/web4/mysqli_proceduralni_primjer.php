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
          $query="SELECT * FROM stud LIMIT 50";
          $result=mysqli_query($link, $query);
          while ($row = mysqli_fetch_assoc($result)) {
              echo $row['imeStud']." ".$row['prezStud'];
          }
          
          ?>
          
      </div>
    <hr>
        
  </body>
        
</html>
<?php
mysqli_close($link);
?>