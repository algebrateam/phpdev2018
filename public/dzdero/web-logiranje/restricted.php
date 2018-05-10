<?php
session_start();
if (isset($_POST['logout'])) {
    unset($_SESSION['login']);
}
if (!isset($_SESSION['login'])) {
    header('Location: login.php');
    exit;
}
?>
<!DOCTYPE html>
<html>
  <head>
    <title>Tajna velike moći</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
      <div>Dobrodošli <a href="update.php"><?=$_SESSION['username']?></a></div>
      <strong><?=$_SESSION['email']?></strong>
    <form action="#" method="post">
      <input type="submit" name="logout" value="Logout">
      
    </form>
  </body>
</html>


