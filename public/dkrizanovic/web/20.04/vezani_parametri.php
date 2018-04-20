<?php
$mysqli= new mysqli('localhost','root','','fakultet');
if(mysqli_connect_errno())
{
    echo 'Doslo je do pogreske:';
    echo mysqli_connect_error();
    exit();
}
$query_tpl="SELECT pbr FROM mjesto WHERE nazMjesto=?";
$naziv="Zagreb";
if($stmt=$mysqli->prepare($query_tpl))
{
    $stmt->bind_param('s', $naziv);
    $stmt->execute();
    $stmt->bind_result($pbr);
    $stmt->fetch();
    echo $pbr;
    $stmt->close();
}
$mysqli->close();


