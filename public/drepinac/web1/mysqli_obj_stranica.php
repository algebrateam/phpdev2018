<?php
include_once './dbcon_o.php';
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
  </head>
<style>
table {
    border-collapse: collapse;
}

table, td, th {
    border: 1px solid black;
}
div.ex1 {
    width: 570px;
    height: 300px;
    overflow: scroll;
}
div.ex1 {
    width: 570px;
    height: 300px;
    overflow: scroll;
    
}
.right {
    position: absolute;
    right: 50px;
    width: 400px;
    border: 3px solid #73AD21;
    padding: 10px;
}
</style>
  <body>
    <h3>Popis studenata</h3>
    <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">
        &nbsp&nbsp;Pojam za pretragu: <input type="text" name="pretraga">
       <input type="submit" name="trazi" value="Traži">
    </form>
    <div class="ex1">
      <?php
      if (isset($_GET['pretraga'])) {
          $pojam = $_GET['pretraga'];
      }
      $query = "select stud.mbrStud, stud.imeStud, stud.prezStud, mjesto.nazMjesto, 
                       mjesto.sifZupanija, zupanija.nazZupanija from stud
                 inner join mjesto on mjesto.pbr=stud.pbrStan
                 inner join zupanija on zupanija.sifZupanija=mjesto.sifZupanija
                 where stud.imeStud like ? or stud.prezStud like ?
                    or mjesto.nazMjesto like ? or zupanija.nazZupanija like ?";      
     if (empty($pojam)) {
         $pojam = '%';
     }
     if ($stmt=$mysqli->prepare($query)) {
       $stmt->bind_param('ssss', $pojam, $pojam, $pojam, $pojam);  // u prepare mora ici varijabla
       $stmt->execute();
       $stmt->bind_result($mbrStud, $imeStud, $prezStud, $nazMjesto, $sifZupanija, $nazZupanija);?>

        <table>
        <thead>
          <tr><th>Mbr</th><th>Ime</th><th>Prezime</th><th>Mjesto</th><th>Županija</th></tr>
        </thead>
        <tbody> 
          <!-- početak repeatera -->
    <?php
    while ($stmt->fetch()) {
        echo "<tr>";
        echo '<td><input type="submit" value="submit" onclick="loadDoc('.$mbrStud.')">'           
                ."</td><td>".$imeStud."</td><td>".$prezStud."</td><td>".$nazMjesto."</td><td>".$nazZupanija."</td>";
    }
    $stmt->close();
    }
    $mysqli->close();?>
        </tbody>     
      </table>
    </div>

    <div id='pero'>
    </div>
  </body>

  <script type="text/javascript">
    function loadDoc(kratica) {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     document.getElementById('pero').innerHTML = this.responseText;
    }
  };
  var stranica="./getupisanistud.php?kratica="+kratica;
  xhttp.open("GET",stranica , true);
  xhttp.send();
}
      </script>
</html>
