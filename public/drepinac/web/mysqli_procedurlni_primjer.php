<?php
include_once './dbcon.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        $query = "SELECT * FROM stud LIMIT 50";
        $result = mysqli_query($link, $query);
        while ($row = mysqli_fetch_assoc($result)) {
            echo $row['imeStud'].' '.$row['prezStud'];
        }
        ?>  
    </body>
</html>
<?phpmysqli_close($link);?>