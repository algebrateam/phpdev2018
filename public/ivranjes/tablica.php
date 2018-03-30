             <?php

function kost($imenaArray)
{
    echo '
	<table border="1">
	<tr>
	<th>Ime</th>
	<th>Prezime</th>
	<th>Tecaj</th>
	</tr>';
     
    
    foreach ($imenaArray as $key => $ucenik) {
        echo'
		<tr>
		<td>'.$ucenik["ime"].'</td>
		<td>'.$ucenik["prezime"].'</td>
		<td>'.$ucenik["tecaj"].'</td>
           
		</tr>';
    }
    
    echo '</table>';
}

$ucenici = array();

$ucenici[1] ["ime"] = "ivan";
$ucenici[1] ["prezime"] = "vranjes";
$ucenici[1] ["tecaj"] = "php";

$ucenici[2] ["ime"] = "gjuro";
$ucenici[2] ["prezime"] = "kajan";
$ucenici[2] ["tecaj"] = "my";

$ucenici[3] ["ime"] = "goran";
$ucenici[3] ["prezime"] = "kolobaric";
$ucenici[3] ["tecaj"] = "sql";


kost($ucenici);
