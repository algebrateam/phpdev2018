<?php
include_once './dbconn.php';
?>

      <?php
      $query ="SELECT DISTINCT stud.imeStud, stud.prezStud FROM
pred LEFT JOIN ispit ON pred.sifPred= ispit.sifPred
LEFT JOIN stud on ispit.mbrStud=stud.mbrStud
WHERE pred.kratPred='".$_GET['kratica']."'  AND stud.imeStud IS NOT NULL";
      $result= $mysqli->query($query);
      echo "<ol>";
      while ($row = $result->fetch_assoc()) {
          echo "<li>".$row['imeStud']." ".$row['prezStud']."</li>";
      }
      echo "</ol>";
    ?>
<?php $mysqli->close(); ?>