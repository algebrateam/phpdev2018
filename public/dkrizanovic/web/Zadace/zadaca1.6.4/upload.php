<!DOCTYPE html>
<html>
    <head>
        <title>Upload</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div><?php
                if (isset($_GET['brojfajlova'])) {
                    $num = $_GET['brojfajlova'] > 5 ? die(" ( $_GET[brojfajlova] )") : $_GET['brojfajlova'];
                    if ($num !== null) {
                        echo "<form action = '' method = 'POST' enctype = 'multipart/form-data'>";
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
              
        ?></div>
    </body>
</html>
<?php
if (isset($_POST['files'])) {
            print_r($_POST['files']);
            foreach ($_FILES['file']["name"] as $file => $key) {
                echo "<br> Odabrali ste: ".$_FILES['file']["name"][$file]." datoteku";
                echo "<br>";
                //  }
                if (file_exists("upload/" . $_FILES['file']['name'][$file])) {
                    echo "Datoteka ". $_FILES['file']['name'][$file] ." vec postoji u folderu upload. ";
                } else {
                    move_uploaded_file($_FILES['file']['tmp_name'][$file], "upload/" . $_FILES['file']['name'][$file]);
                    echo "Čestitamo, vaša datoteka ". $_FILES['file']['name'][$file] ." je uspješno dodana!";
                }
            }
        }
                                
?>
