<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <form method="POST" action="" enctype="multipart/form-data">
            Datoteka za upload:<br/>
            <input type="file" name="datoteka" value=""/><br/>
            <input type="submit" name="upload_btn" value="Upload" />
        </form>
        <?php
        echo "<pre>";
        if (isset($_POST['upload_btn'])) {
            print_r($_FILES);
        
            echo "</pre>";
            echo "<hr/>";

            $uploaddir = basename(__DIR__);
            $uploadfile = basename($_FILES['datoteka']['name']);

            $file_array = explode(".", $uploadfile);
            $file_ext = end($file_array);

            $file_onserver = "file_" . time() . "." . $file_ext;

            $new_file_name = $uploaddir . $file_onserver;

            if (move_uploaded_file($_FILES['datoteka']['tmp_name'], $new_file_name)) {
                //blok koda
            }
        }
        ?>
    </body>