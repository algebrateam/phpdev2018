<?php

function hr_mjesec($mj)
{
	$mj_array = array();
	$mj_array[1] = "Sijeèanj";
	$mj_array[2] = "Veljaèa";
	$mj_array[3] = "Ožujak";
	$mj_array[4] = "Travanj";
	$mj_array[5] = "Svibanj";
	$mj_array[6] = "Lipanj";
	$mj_array[7] = "Srpanj";
	$mj_array[8] = "Kolovoz";
	$mj_array[9] = "Rujan";
	$mj_array[10] = "Listopad";
	$mj_array[11] = "Studeni";
	$mj_array[12] = "Prosinac";
	
	return $mj_array[$mj];
}

$mj = date('n');

echo hr_mjesec($mj);
