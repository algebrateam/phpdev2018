<?php
include_once './dbconn.php';
?>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
  <head>
    <meta charset="utf-8">
    <title>Stranica sa primjerima html komponenti</title>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style type="text/css">
      /* Style the buttons that are used to open and close the accordion panel */
.accordion {
    background-color: #eee;
    color: #444;
    cursor: pointer;
    padding: 18px;
    width: 100%;
    text-align: left;
    border: none;
    outline: none;
    transition: 0.4s;
}

/* Add a background color to the button if it is clicked on (add the .active class with JS), and when you move the mouse over it (hover) */
.active, .accordion:hover {
    background-color: #ccc;
}

/* Style the accordion panel. Note: hidden by default */
.panel {
    padding: 0 18px;
    background-color: white;
    display: none;
    overflow: hidden;
}
      </style>
  </head>
  <body>
    <h3>Studenti</h3>
    <div  class="w3-container">
      <?php
      $query = "SELECT * FROM stud LIMIT 5";
      $result = $mysqli->query($query);
      ?>
      <table class="w3-table-all">
        <thead>
          <tr><th>Ime</th><th>Prezime</th></tr>
        </thead>
        <tbody> 
          <!-- početak repeatera -->
          <?php while ($row = $result->fetch_assoc()) {
          ?>         
            <tr>
              <td><?= $row['imeStud'] ?></td>
              <td><?= $row['prezStud'] ?></td>
            </tr> 
          <?php
      } ?> <!-- kraj repeatera -->
        </tbody>     
      </table>
    </div>
    <h3>Mjesta</h3>
    <div  class="w3-container">
      <?php
      $query = "SELECT * FROM mjesto WHERE nazMjesto LIKE 'V%' LIMIT 6";
      $result1 = $mysqli->query($query);
      ?>
      <?php
      $query = "SELECT * FROM mjesto WHERE LENGTH(nazMjesto) > 15";
      $result = $mysqli->query($query);
      ?>
      <select>
        <optgroup label="Na slovo V">
          <!-- početak repeatera -->
          <?php while ($row = $result1->fetch_assoc()) {
          ?>  
            <option value="<?= $row['pbr'] ?>">
              <?= $row['nazMjesto'] ?></option>
          <?php
      } ?> <!-- kraj repeatera -->
        </optgroup>
        <option disabled>_________</option>
        <optgroup label=" Mjesta >15">
        <!-- početak repeatera -->
        <?php while ($row = $result->fetch_assoc()) {
          ?>  
          <option value="<?= $row['pbr'] ?>">
            <?= $row['nazMjesto'] ?></option>
        <?php
      } ?> <!-- kraj repeatera -->
</optgroup>
      </select>

    </div>
    <h3>Accordion klasa </h3>
          <?php
      $query = "SELECT * FROM pred LIMIT 10";
      $result = $mysqli->query($query);
      ?>
    <div>
      
              <!-- početak repeatera -->
        <?php while ($row = $result->fetch_assoc()) {
          ?>  
       
      <button class="accordion"><?= $row['nazPred'] ?></button>
<div class="panel">
  <p>Kratica: <strong><?= $row['kratPred'] ?></strong></p>
  <p>Upisano studenata: <span class="w3-badge w3-green" onclick="loadDoc('<?= $row['kratPred'] ?>')"><?= $row['upisanoStud'] ?></span></p><p><span id="<?= $row['kratPred'] ?>"></span></p>
  <p>Broj sati tjedno: <span class="w3-badge w3-green"><?= $row['brojSatiTjedno'] ?></span></p>
</div>
 <?php
      } ?> <!-- kraj repeatera -->
 
<button class="accordion">Section 2</button>
<div class="panel">
  <p>Lorem ipsum...</p>
</div>

<button class="accordion">Section 3</button>
<div class="panel">
  <p>Lorem ipsum...</p>
</div>
    </div>
  </body>
  <script type="text/javascript">
    var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        /* Toggle between adding and removing the "active" class,
        to highlight the button that controls the panel */
        this.classList.toggle("active");

        /* Toggle between hiding and showing the active panel */
        var panel = this.nextElementSibling;
        if (panel.style.display === "block") {
            panel.style.display = "none";
        } else {
            panel.style.display = "block";
        }
    });
}
    </script>
    <script type="text/javascript">
      function loadDoc(kratica) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById(kratica).innerHTML = this.responseText;
    }
  };
  var stranica="getupisanistud.php?kratica="+kratica;
  xhttp.open("GET",stranica , true);
  xhttp.send();
}
      </script>
</html>
