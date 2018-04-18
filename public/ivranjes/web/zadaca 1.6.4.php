<!DOCTYPE html>
<html>
    <head>
        <title>1.6.4</title>
    </head>
    <body>

        <?php
        //echo $_SERVER['DOCUMENT_ROOT'];
        if (isset($_GET['filebr'])) {
            //$num = $_GET['filebr'] > 5 ? die("Ne smije biti iznad 5 ( $_GET[filebr] )") : $_GET['filebr'];
            if ($num = $_GET['filebr'] > 5 or $num = $_GET['filebr'] == null) {
                die("Ne smije biti prazno polje i iznad 5 ( $_GET[filebr] )");
            } else {
                $num = $_GET['filebr'];
            }
            if ($num !== null) {
                echo "<form method='POST' action='' enctype='multipart/form-data'>";
                echo "<pre>";
                for ($i = 1; $i <= $num; $i++) {
                    echo "<p>Datoteka $i</p><input type='file' name='file[]' multiple>";
                    echo "<br/>";
                }
                echo "</pre>";
                echo "<button name='files' type='submit'>Upload</button>";
                echo "</form>";
            }
        }
        ?>

    </body>

</html>


<?php
if (isset($_POST['files'])) {
            print_r($_POST['files']);
            foreach ($_FILES['file']["name"] as $file => $key) {
                echo $_FILES['file']["name"][$file];
                echo "<br>";
        
                move_uploaded_file($_FILES['file']['tmp_name'][$file], "upload/" . $_FILES['file']['name'][$file]);
            }
        }
?>


