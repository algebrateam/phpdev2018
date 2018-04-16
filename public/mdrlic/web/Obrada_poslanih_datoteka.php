
<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
      
<form method="POST" action="" enctype="multipart/form-data">
    Datoteka za upload:<br/>
    <input type="file" name="datoteka" value=""/><br/>
    <input type="submit" name="upload_btn" value="Upload" />
</form>
  <?php     
// $uploaddir='/doc/';
$uploaddir=basename(__DIR__);
$uploadfile=basename($_FILES['datoteka']['name']);

$file_array=explode(".",$uploadfile);
$file_ext=end($file_array);

$file_onserver="file_".time().".".$file_ext;

$new_file_name=$uploaddir.$file_onserver;

if(move_uploaded_file($_FILES['datoteka']['tmp_name'],$new_file_name))

{
//
}


?>
</div>
  </body>
</html>


