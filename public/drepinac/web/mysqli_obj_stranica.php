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
        <meta charset="UTF-8">
        <title></title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
    <body>
        <h3>Studenti</h3>
        <div class="w3-container">
      <?php
        $query ="SELECT * FROM stud LIMIT 10";
        $result= $mysqli->query($query); ?>
        <!--- početak repeatera -->
        <table class="w3-table-all">
            <thead>
              <tr><th>Ime</th><th>Prezime</th></tr>
            </thead>
            <tbody>
        <?php while ($row = $result->fetch_assoc()) { ?>
                <tr><td><?=$row['imeStud']?></td>
                    <td><?=$row['prezStud']?></td></tr>
        <?php } ?>  <!-- kraj repeatera -->
            </tbody>
        </table>
        </div>
        <h3>Mjesta</h3>
        <div class="w3-container">
      <?php
        $query ="SELECT * FROM mjesto where length(nazMjesto) > 15";
        $result= $mysqli->query($query); 
      ?>
            <select>
                <optgroup>
                    
                </optgroup>
                <?php while ($row = $result->fetch_assoc()) { ?>
                <option value="<?=$row['pbr']?>"><?=$row['nazMjesto'] ?></option>
                <?php } ?>
            </select>
            </tbody>
        </table>
        </div>
    </body>
</html>
