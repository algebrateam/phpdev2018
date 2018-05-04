<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
  
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script>
function pokazi(str) {
    if (str == "") {
        document.getElementById("Hint").innerHTML = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("Hint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","testajaxispis.php?q="+str,true);
        xmlhttp.send();
    }
}
</script>
</head>
<body>
<h3>Prezimena na B</h3>
    <div  class="w3-container">
    <form name="form_update" method="post" action="testajaxispis.php">
      <?php
      $query = "SELECT * FROM fakultet.stud WHERE stud.prezStud LIKE 'B%' ORDER BY stud.prezStud ASC";
      $result1 = $mysqli->query($query);
      ?>
      
      <select name="users" onchange="pokazi(this.value)"
     
        <optgroup label="Prezimena na slovo B">
          <!-- početak repeatera -->
          <?php while ($row = $result1->fetch_assoc()) {
          ?>  
            <option value="<?= $row['mbrStud'] ?>">
              <?= $row['prezStud'] ?></option>
          <?php
      } ?> <!-- kraj repeatera -->
        </optgroup>
        
      </select>
     </form>
    </div>
<br/>
<div id="Hint"><b>Informacije o studentu nakon odabira studenta iz DROPDOWN </b></div>

</body>
</html>
<?php $mysqli->close(); ?>