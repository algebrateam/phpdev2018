<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Zadaća</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  </head>
    <h3>Studenti s imenom Ivan</h3>
    <div class="w3-container" style="background-color:black">
      <?php
      $query = "SELECT stud.mbrStud, stud.imeStud, stud.prezStud FROM fakultet.stud WHERE imeStud LIKE 'Ivan'";
      $result = $mysqli->query($query);
      ?>
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
        </tbody>     
      </table>
    </div>
    
    <h3>Prezimena na B</h3>
    <div  class="w3-container">
      <?php
      $query = "SELECT DISTINCT stud.prezStud FROM fakultet.stud WHERE stud.prezStud LIKE 'B%' ORDER BY stud.prezStud ASC";
      $result1 = $mysqli->query($query);
      ?>
      
      <select>
        <optgroup label="Prezimena na slovo B">
          <!-- početak repeatera -->
          <?php while ($row = $result1->fetch_assoc()) {
          ?>  
            <option value="<?= $row['pbr'] ?>">
              <?= $row['prezStud'] ?></option>
          <?php
      } ?> <!-- kraj repeatera -->
        </optgroup>
        
      </select>

    </div>
        
    </body>
</html>
<?php $mysqli->close(); ?>