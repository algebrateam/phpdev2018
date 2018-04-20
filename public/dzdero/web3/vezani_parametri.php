<?php
include_once './dbconn.php';

$query_tpl='select pbr from mjesto where nazMjesto=?';
$naziv='Zagreb';
if($stmt=$mysqli->prepare($query_tpl))
{
    $stmt->bind_param('s',$naziv);
    $stmt->execute();
    $stmt->bind_result($pbr);
    $stmt->fetch();
    echo '<br>'.$pbr;
    $stmt->close();
}
$mysqli->close();
?>