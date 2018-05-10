<?php
   ob_start();
   session_start();
if (!isset($_SESSION['username'])) {
    header("Location: login.php");
    exit();
}

?>

<a href = "logout.php" title = "Logout">Click here to LOGOUT </a>

