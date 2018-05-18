<?php
include_once './dbconn.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Dvorana</title>
    <meta charset ="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
</head>

<body>
    <div>
        <?php
        $query = "SELECT * FROM dvorana ORDER BY oznDvorana ASC;";
        $result = $mysqli->query($query);
        ?>
    </div>
    
    <table class="w3-table-all w3-hoverable" style="width:300px">
        <thead>
           
    <tr>Dvorane</tr> 
        </thead>
        <?php
        while($row = mysqli_fetch_array($result))
        {
        echo '<a href="rezervacija.php?dvorana=' .urlencode($row['oznDvorana']). '">' . htmlspecialchars($row['oznDvorana']) . '</a><br/>';
        }
        ?>
 
</body>
    </html>