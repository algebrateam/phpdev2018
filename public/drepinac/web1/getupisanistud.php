<?php
include_once './dbcon_o.php';
?>

      <?php
      $query ="select pred.kratPred, pred.nazPred, concat(nastavnik.imeNastavnik,' ',nastavnik.prezNastavnik) as Nastavnik from ispit
  inner join pred on pred.sifPred=ispit.sifPred
  inner join nastavnik on nastavnik.sifNastavnik=ispit.sifNastavnik
  where ispit.mbrStud = ?;";
      
     if ($stmt=$mysqli->prepare($query)) {
       $stmt->bind_param('s', $_GET['kratica']);  // u prepare mora ici varijabla
       $stmt->execute();
       $stmt->bind_result($kratPred, $nazPred, $Nastavnik);?>

        <table>
        <thead>
            <tr><th  colspan="3">&nbsp;Popis ispita</th></tr>
          <tr><th>Predmet</th><th>Naziv</th><th>Nastavnik</th></tr>
        </thead>
        <tbody> 
          <!-- početak repeatera -->
    <?php
    while ($stmt->fetch()) {
        echo "<tr>";
        echo "<td>".$kratPred."</td><td>".$nazPred."</td><td>".$Nastavnik."</td>";
    }
    $stmt->close();
    }
    $mysqli->close();?>

        </tbody>     
      </table>

