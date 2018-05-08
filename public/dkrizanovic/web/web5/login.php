<?php
session_start();
require 'dbconn.php';
if (isset($_POST['remember_me'])) {
    setcookie('cookie_name', $_POST['email'], time() + (86400 * 30), "/");
    setcookie('cookie_pass', $_POST['password'], time() + (86400 * 30), "/");
}
if (isset($_POST['password'])) {
    //$query = "SELECT imeStud, prezStud FROM stud WHERE stud.email=? AND stud.mbrStud=?";
    $query = "SELECT name, email FROM users WHERE users.email=? AND users.password=?";
    if ($stmt = $mysqli->prepare($query)) {
        $stmt->bind_param('ss', $_POST['email'], md5($_POST['password']));
        $stmt->execute();
        $stmt->bind_result($ime, $prezime);
        $stmt->fetch();
    }
    if (isset($ime)) {
        $_SESSION['username']=$ime;
        $_SESSION['lastname']=$prezime;
        $_SESSION['login']=true;
        $stmt->close();
        $mysqli->close();
        header('Location: restricted.php');
        exit();
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
//      print_r($_POST);
//      print_r($_SESSION);
      print_r($_COOKIE);
      ?>
      <div>
        vlatka.curkovic@algebra.hr<br>
        1510
      </div>
<div class="row" style="margin-top:20px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
      <form role="form" action="#" method="post">
			<fieldset>
				<h2>Please Sign In</h2>
				<hr class="colorgraph">
				<div class="form-group">
                                    <input type="email" name="email" id="email" required="true" class="form-control input-lg" placeholder="Email Address" value="<?php if (isset($_COOKIE['cookie_name'])) {
          echo $_COOKIE['cookie_name'];
      } ?>">
				</div>
				<div class="form-group">
                    <input type="password" name="password" id="password" required="true" class="form-control input-lg" placeholder="Password" value="<?php if (isset($_COOKIE['cookie_pass'])) {
          echo $_COOKIE['cookie_pass'];
      } ?>">
				</div>
				<span class="button-checkbox">
					<button type="button" class="btn" data-color="info">Remember Me</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">Forgot Password?</a>
				</span>
				<hr class="colorgraph">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="register.php" class="btn btn-lg btn-primary btn-block">Register</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>
  </body>
</html>


