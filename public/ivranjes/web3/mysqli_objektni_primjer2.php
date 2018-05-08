<?php
$host='localhost';  // 127.0.0.1
$user='root';
$password='';
$database='fakultet';
$mysqli= new mysqli($host, $user, $password, $database);
//mysqli_set_charset($link, 'utf8');
if ($mysqli) {
} else {
    // echo mysqli_connect_error();
    die('Neuspjela konekcija!');
}
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
      $query ="SELECT * FROM stud LIMIT 50";
      $result= $mysqli->query($query);
      while ($row = $result->fetch_assoc()) {
          echo $row['imeStud']."    ".$row['prezStud'];
      }
      echo "<hr>";
      echo $mysqli->affected_rows;
       echo $mysqli->server_info;
    ?>
    
    </div>
  </body>
</html>
<?php $mysqli->close(); ?>