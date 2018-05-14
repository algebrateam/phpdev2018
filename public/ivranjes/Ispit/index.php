<?php


include_once './dbconn.php';


?>


<!DOCTYPE html>

<html>
    
<head>
  
<h1>Hello It is me</h1>

<button onclick="myFunction()">Setiraj pozadinu</button>

<script>
function myFunction() {
    document.body.style.background = "#f3f3f3 url('img_tree.png') no-repeat right top";
}
</script>      

<title>Dvorane predavanja</title>


        
<meta charset="UTF-8">
        
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
    
<body>
                

<div><?php
            

$query = "SELECT * FROM dvorana ORDER BY oznDvorana ASC;";
            
$result = $mysqli->query($query);
            
            

?>

</div>
       

<table class="w3-table-all w3-hoverable" style="width:400px">
                

<thead>
                    

<tr><th>Dvorane</th>
</tr>
                
</thead>
                
<tbody>
                    
                    
<th>
<?php 
  
            

while($row = mysqli_fetch_array($result))
    
{
        
echo '<a href="rezervacija.php?dvorana=' .urlencode($row['oznDvorana']). '">' . htmlspecialchars($row['oznDvorana']) . '</a><br/>';          // pronadjeno na https://stackoverflow.com/questions/24599839/how-to-generate-link-from-mysql-query-results-in-php)               
    }   
    ?></th>
    </body>
</html>


