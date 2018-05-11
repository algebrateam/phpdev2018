<?php
$host='localhost';  // 127.0.0.1
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if ($link) {
} else {
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
    <div>Spoj na bazu pomoću mysqli</div>
    <hr>
    
    <div>
      <?php
      $query="SELECT * FROM stud";
      $result= mysqli_query($link, $query);
      echo "Broj ispita je:". mysqli_affected_rows($link);
      
      
      ?>
    </div>
    <hr>
      <div>
        Pokušaj inserta:<br>
      <?php
      $query="INSERT INTO `fakultet`.`users` "
        . "(`name`, `email`, `password`) "
        . "VALUES ('Nerxon', 'lozim@te.com', '1223')";
      
    //  $result= mysqli_query($link, $query);
      echo "Pokušam unijeti jedan ispit:". mysqli_affected_rows($link);
      
      
      ?>
    </div>  
    
        <hr>
      <div>
        Dohvaćanje zapisa<br>
      <?php
      $query="SELECT * FROM ispit limit 5";
      
      $result= mysqli_query($link, $query);
     
      while ($row= mysqli_fetch_row($result)) {
          echo $row[0]." ".$row[1]." ".$row[2]." ".$row[3]."<br>";
      }
      
      ?>
        
             
    </div>  
    
        <hr>
      <div>
        Dohvaćanje zapisa<br>
      <?php
      $query="SELECT * FROM mjesto limit 3";
      
      $result= mysqli_query($link, $query);
     
      while ($row= mysqli_fetch_row($result)) {
          echo $row[0]." ".$row[1]." ".$row[2]." ".$row[3]."<br>";
      }
      
      ?>
        
         <?php
       while ($row1 = mysql_fetch_array($query)) {
           echo 'ime.'.$row["nazMjesto"].'prezime:'.$row[1];
       }
        ?>
    </div>  
  </body>
</html>



