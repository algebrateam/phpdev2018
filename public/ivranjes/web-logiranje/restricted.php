<?php
session_start();
require 'dbconn.php';
if (isset($_POST['logout'])) {
    unset($_SESSION['login']);
}
if (!isset($_SESSION['login'])) {
    header('Location: login.php');
    exit;
}
if (isset($_POST['update'])) {
    $query = "UPDATE `fakultet`.`users` SET `name`=?, `email`=?, `password`=? "
    . "WHERE `email`=?;";
    //  UPDATE `fakultet`.`users` SET `name`='ana1' WHERE  `id`=9;
    $_SESSION['pass'] =$_POST['password'];
    $_POST['password']= md5($_POST['password']);
    if ($stmt = $mysqli->prepare($query)) {
        $stmt->bind_param('ssss', $_POST['ime'], $_POST['email'], $_POST['password'], $_SESSION['email']);
        $stmt->execute();
        $_SESSION['username']=$_POST['ime'];
        $_SESSION['email'] =$_POST['email'];
    }
}
?>


<!DOCTYPE html>
<html>
  <head>
    <title>Logiraj se</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="script.js"></script>
    <link href="style.css" rel="stylesheet" id="style-css">
  </head>
  <body>
    <div class="container">
      <?php
//      echo $stmt->error;
//      echo $ime." ".$prezime;
      print_r($_POST);
//      print_r($_SESSION);
//      print_r($_COOKIE);
      ?>
      <div>
        vlatka.curkovic@algebra.hr<br>
        1510
      </div>
      <div>
        <a href="login.php?logout=true">logout</a>
      </div>
      <div class="row" style="margin-top:20px">
        <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
          <form role="form" action="#" method="post">
            <fieldset>
              <h2>Izmjenite svoje podatke</h2>
              <hr class="colorgraph">
              <div class="form-group">
                <input type="text" name="ime" id="ime" required="true" class="form-control input-lg" placeholder="ime" value="<?= $_SESSION['username'] ?>">
              </div>
              <div class="form-group">
                <input type="email" name="email" id="email" required="true" class="form-control input-lg" placeholder="Email Address" value="<?= $_SESSION['email'] ?>">
              </div>
              <div class="form-group">
                <input type="password" name="password" id="password"  required="true"  class="form-control input-lg" placeholder="Password" value="<?= $_SESSION['pass'] ?>">
              </div>

              <hr class="colorgraph">
              <div class="row">

                <div class="col-xs-6 col-sm-6 col-md-6">
                  <input type="submit" name="update" class="btn btn-lg btn-primary btn-block" value="Update">

                </div>
              </div>
            </fieldset>
          </form>
        </div>
      </div>

    </div>
  </body>
</html>

