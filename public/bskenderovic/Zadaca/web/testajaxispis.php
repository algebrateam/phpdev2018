<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
  
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  </head>
  <body>
<?php
$q = intval($_GET['q']);
$query = "SELECT * FROM stud WHERE mbrStud = '" . $q . "'";
$result = $mysqli->query($query);
?>
<div class="w3-container" style="background-color:black">
<table class="w3-table-all">
        <thead>
          <tr><th>Matični broj</th><th>Ime</th><th>Prezime</th></tr>
        </thead>
        <tbody> 
          <!-- početak repeatera -->
          <?php while ($row = $result->fetch_assoc()) {
          ?>         
            <tr>
              <td><?= $row['mbrStud'] ?></td> 
              <td><?= $row['imeStud'] ?></td>
              <td><?= $row['prezStud'] ?></td>
            </tr> 
          <?php
      } ?> <!-- kraj repeatera -->
      </div>
  </body>
</html>
<?php $mysqli->close(); ?>