<!DOCTYPE html>
<html>
<body>

<?php

function show_naslov($naslov = 'no_title')
{
    if ($naslov == 'film'){
        $var = 'Terminator';
    } elseif ($naslov == 'serija' || $naslov == 'sapunica' ){
        $var = 'Dr. House';
    }
//    switch ($naslov):
//    case 'film':
//        $var = 'Terminator';
//        break;
//    case 'serija':
//        $var = 'Dr. House';
//        break;
//    case 'no_title':
//        $var = '';
//        break;
//    endswitch;
    
    echo $var;
}

function show_imena($imena = array())
{
    foreach($imena as $ime)
    {
        echo $ime;
    }
}
$niza = array('pero','marko','janko');
show_naslov('sapunica');
show_imena($niza);
?>

</body>
</html> 