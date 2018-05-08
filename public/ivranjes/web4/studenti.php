<?php
include_once './dbconn.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Studenti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div align="center">
            <form name="form_update" method="post" action="studentinfo.php">
<?php
echo "<select name= 'Student'>";
echo '<option value="">'.'--- Izaberi Studenta ---'.'</option>';
$query = mysqli_query($mysqli, "SELECT * FROM stud ORDER BY imeStud ASC LIMIT 15;");
while ($row=mysqli_fetch_array($query)) {
    echo "<option value='". $row['mbrStud']."'>".$row['imeStud']." ".$row['prezStud']
 .'</option>';
}
echo '</select>';
?> <input type="submit" name="submit" value="Provjeri"/>
</form>
<br/><br/>
        </div>
    </body>
</html>
