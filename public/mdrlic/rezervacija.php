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
?>

<!DOCTYPE HTML>
<html>
    <head>
<a href="index.php"><button type="button">Natrag</button></a><br></head>
<body>
<br> Dvorana:


<?php
//$query = "SELECT oznVrstaDan, sat, sifPred FROM rezervacija";
//$result = mysqli_query($link, $query);

//while ($row= mysqli_fetch_row($result)) {
          //echo $row[0]." ".$row[1]." ".$row[2]."<br>";  
      //}
 

$query ="SELECT oznVrstaDan,sat,nazPred FROM rezervacija INNER JOIN pred on rezervacija.sifPred = pred.sifPred where oznDvorana=?";
      
     if ($stmt=$link->prepare($query)) {
         $stmt->bind_param('s', $_GET['dvorana']);
         $stmt->execute();
         $stmt->bind_result($oznVrstaDan,$sat,$nazPred);
?>
   

<table>
  <th>Dan</th>
  <th>Sat</th>
  <th>Naziv predmeta</th>
</table>
   


                  
<?php
while ($stmt->fetch()) {
        echo "<tr>";
        echo "<td>".$oznVrstaDan.","."</td>";
        echo "<td>".$sat.":00,"."</td>";
        echo "<td>".$nazPred."</td>";
    }
        $stmt->close();
    }
        $link->close();
?>
   
</body>     
</html>

