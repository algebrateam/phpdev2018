<!DOCTYPE html>
<html>
  <head>
    <title>Primjer 1.6.3</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
    <a href="link1.php" target="_blank">link1.php</a>
    <div>Primjer 1.6.3. 
      Ispišite pet stringova pomoću for petlje<br>
      
      <?php
      for ($index = 1; $index <= 5; $index++) {
          echo '<a href="link'.$index.'.php" target="_blank">link'.$index.'.php</a>'.'<br>';
      }
      echo "<br>";
      
      
for ($index = 1; $index <= 5; $index++) {
    // printf('<a href="link%s.php" target="_blank">link%s.php</a><br>', $index,$index);
    printf('<a href="?broj=%s" target="_self"> %s </a><br>', $index, $index);
}
      echo "<hr>";
if (isset($_GET['broj'])) {
    echo "Odabrali ste:".$_GET['broj'];
}
$_ENV['user']='Testni user';
print_r($_SERVER);

echo $_ENV['HOMEPATH'];
echo getenv('REMOTE_ADDR')
      ?>
    </div>
  </body>
</html>




