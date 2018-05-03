<?php
$mysqli= new mysqli('localhost', 'root', '', 'fakultet');
if (mysqli_connect_errno()) {
    echo 'Doslo je do pogreske:';
    echo mysqli_connect_error();
    exit();
}
$query_tpl="SELECT pbr, nazMjesto FROM mjesto WHERE pbr BETWEEN ? AND ?";
$p1=21400;
  $p2=22000;
if ($stmt=$mysqli->prepare($query_tpl)) {
    $stmt->bind_param('ii', $p1, $p2);  // u prepare mora ici varijabla
    // $stmt->bind_param('s', $naziv);  // samo jedan bind_param
    $stmt->execute();
    $stmt->bind_result($postanski, $imemjesta);
    while ($stmt->fetch()) {
        echo $imemjesta ."(".$postanski.")<br>";
    }
    
    $stmt->close();
}
$mysqli->close();
