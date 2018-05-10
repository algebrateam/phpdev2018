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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
    
  </head>
  <body>
    <div class="row">
      <div class="col-sm-4">Dobrodošli <?=$_SESSION['username']?> <?=$_SESSION['lastname']?></div>
    <div class="col-sm-5">
        <h2><?=$_SESSION['username']?> <?=$_SESSION['lastname']?></h2>
        <form action="izmjena_usera.php" method="post">
            <input type="submit" name="izmjena" value="Izmjeni usera">
        </form>
        <form action="brisanje_usera.php" method="post">
            <input type="submit" name="brisanje" value="Obriši usera">
        </form>
    </div>
    </div>
    <form action="#" method="post">
      <input type="submit" name="logout" value="Logout">
    </form>
  </body>
</html>


