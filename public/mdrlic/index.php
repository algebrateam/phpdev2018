<?php
$host='localhost';  
$user='root';
$password='';
$database='fakultet';
$link=mysqli_connect($host, $user, $password, $database);
if ($link) {
} else {
    die('Neuspjela konekcija!');
}


 $query = "SELECT oznDvorana FROM dvorana ORDER BY oznDvorana ASC";
$result = mysqli_query($link, $query);

while ($row= mysqli_fetch_row($result)) {
          echo "<a href=\"rezervacija.php"."\" target=\"_blank\">".$row['0']."</a>"."<br>";  
      }

