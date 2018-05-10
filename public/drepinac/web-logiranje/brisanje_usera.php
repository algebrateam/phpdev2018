<?php
session_start();
require 'dbconn.php';
if (isset($_POST['povratak'])) {
    header('Location: restricted.php');
}
if (isset($_POST['brisi'])) {
    //$query = "SELECT imeStud, prezStud FROM stud WHERE stud.email=? AND stud.mbrStud=?";
    $query = "delete from users WHERE users.email=?";
    if ($stmt = $mysqli->prepare($query)) {
        $stmt->bind_param('s', $_SESSION['email']);
        $stmt->execute();
//        $stmt->bind_result($ime, $email, $prezime);
//        $stmt->fetch();
    }
    $stmt->close();
    header('Location: login.php');
}
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  <body>
      <div class="row">
      <div class="col-sm-4">
          <form action="#" method="post">
            Ime korisnika&nbsp.&nbsp.&nbsp.&nbsp.: <input type="text" name="ime" value="<?=$_SESSION['username']?>"><br>
            Prezime korisnika: <input type="text" name="prezime" value="<?=$_SESSION['lastname']?>"><br>
            Lozinka korisnika: <input type="text" name="pass" value="<?=$_SESSION['password']?>"><br>
            <input type="submit" name="brisi" value="Obriši">
            <input type="submit" name="povratak" value="Povratak">
          </form>
      </div>
      </div>
    </form>
  </body>
</html>
