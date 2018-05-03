<?php
include_once 'db_connection_proc.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Proceduralni primjer mysqli</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
       <?php
       $query="SELECT * FROM stud LIMIT 50";
       $result= mysqli_query($link, $query);
       while ($row = mysqli_fetch_assoc($result)) {
           echo " ".$row['imeStud']." ".$row['prezStud'];
       }
       
       
       ?>
               
        </div>
    </body>
</html>
<?phpmysqli_close($link);?>