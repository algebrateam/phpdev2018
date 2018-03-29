<?php
include "data.php";
print_r($data);

echo '<table>';
foreach ($data as $key => $value) {
    echo '<tr>'
    .'<td>'.$value['ime'].'</td>'
    .'<td>'
    .'<select>';
    if($value('placeno')=='Da'){
        
    



