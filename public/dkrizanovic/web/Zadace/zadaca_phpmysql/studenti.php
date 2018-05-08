<?php
include_once './db_connection.php';
?>
<!DOCTYPE html>
<html>
    <head>
        <title>Studenti</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div align="center">
            <form name="form_update" method="post" action="studentinfo.php">
<?php
echo "<select name= 'Student' onchange='showUser(this.value)'>";
echo '<option value="">'.'--- Izaberi Studenta ---'.'</option>';
$query = mysqli_query($mysqli, "SELECT * FROM stud ORDER BY imeStud ASC LIMIT 15;");
while ($row=mysqli_fetch_array($query)) {
    echo "<option value='". $row['mbrStud']."'>".$row['imeStud']." ".$row['prezStud']
 .'</option>';
}
echo '</select>';
?>
</form>
<br>
<script type="text/javascript">
function showUser(str) {
    if (str == "") {
        document.getElementById("ispis").innerHTML = "";
        return;
    } else { 
        if (window.XMLHttpRequest) {
            // code for IE7+, Firefox, Chrome, Opera, Safari
            xmlhttp = new XMLHttpRequest();
        } else {
            // code for IE6, IE5
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("ispis").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","studentinfo.php?name="+str,true);
        xmlhttp.send();
    }
}
</script>

</body>
<div id="ispis"><b>Informacije o studentu ce se ispisati ovdje...</b></div>
</html>