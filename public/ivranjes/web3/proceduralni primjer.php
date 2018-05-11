<?php

include_once './dbconn.php';
?>

<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    
        
        <?php
        $query="SELECT * FROM stud LIMIT 50";
        $result= mysqli_query($link, $query);
        while ($row = mysql_fetch_assoc($result)) {
            echo $row('imeStud')." ".row;
        }
  
?>

    </div>
  </body>
</html>

<?php mysqli_close($link);
?>