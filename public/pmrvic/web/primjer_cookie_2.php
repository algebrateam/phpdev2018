<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <div>
      
      <?php
      if(isset($_COOKIE['ime'])){
echo $_COOKIE['ime'];
      }
      else{
        echo "cookie nije postavljen";
      }
?>
      
      
      
    </div>
  </body>
</html>

