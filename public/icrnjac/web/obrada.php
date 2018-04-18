
<form method="POST"action=""enctype="multipart/form-data">
        Datoteka za upload:<br/>
    <input type="file" name="datoteka"value=""/><br/>
    <input type="submit"name="upload_btn"value="Upload"/>
        </form>
 <?php
 /*
        Array(
            [datoteka]=> Array (
                [name]=>potvrda.pdf
                [type]=>application/x-download
                [tmp_name]=> C:\xampplite\tmp\php3EBE.tmp
                [error]=>0
                [size]=>40909
                )
            )
  *
  *
  *
  */
  $uploaddir=basename(__DIR__);
$uploadfile=basename($_FILES['datoteka']['name']);

$file_array=explode(".", $uploadfile);
$file_ext=end($file_array);
$file_onserver="file_".time().".".$file_ext;
$new_file_name=$uploaddir.$file_onserver;
if (move_uploaded_file($_FILES['datoteka']['tmp_name'], $new_file_name)) {//blok koda
}

  

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
