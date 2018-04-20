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
    </head>
    <body>
        <form method="GET" action="<?php $_PHP_SELF ?>">
            Broj datoteka za upload:<br/>
            <input type="number" size="1" name="broj" min="1" max="5" value="0" required/><br/>
            <input type="submit" name="potvrdi" value="OK" />
        </form>
        <?php
        if (isset($_GET['potvrdi'])) {
            $broj = $_GET['broj'];
            echo 'Treba učitati '.$broj.' datoteka</br>';
            echo '<form method="POST" action="" enctype="multipart/form-data">';
            for ($i=1;$i<=$broj; $i++) {
                echo '<input type="file" name="datoteka'.$i.'" value=""/><br/>';
            }
            echo '<input type="submit" name="upload_btn" value="Upload" />';
            echo '</form>';
//          echo "<pre>";
//          print_r($_FILES);
//          echo "</pre>";
        echo "<hr/>";
        }
          if (isset($_POST['upload_btn'])) {
//          $uploaddir = basename(__DIR__);
              $uploaddir = 'd:\xampp\htdocs\phpdev2018\public\drepinac\web\\';
              echo $broj.'<br/>';
              for ($i=1;$i<=$broj;$i++) {
                  $uploadfile = basename($_FILES['datoteka'.$i]['name']);
                  echo $uploadfile;
                  echo '</br>';
                  $file_array = explode(".", $uploadfile);
                  echo "<pre>";
                  print_r($file_array);
                  echo "</pre>";
                  $file_ext = end($file_array);
                  echo $file_ext.'</br>';
                  $file_onserver = "file_".time().".".$file_ext;
                  echo $file_onserver.'</br>';

                  $new_file_name = $uploaddir.$file_onserver;
                  echo $uploaddir.'</br>';
                  echo $new_file_name.'</br>';
                  echo($_FILES['datoteka'.$i]['tmp_name']);
                  echo('</br>');

                  if (move_uploaded_file($_FILES['datoteka'.$i]['tmp_name'], $new_file_name)) {
                  }
              }
          }

// put your code here
        ?>
    </body>
</html>
