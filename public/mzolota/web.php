         
             <!DOCTYPE html>
<html>
<head>
<title>Web</title>
</head>
<body>

<form action ="primjer_post.php">
    <fieldset>
        <label>Ime:
            <input name="ime" value ''/><br/>
            <label>Prezime:
            <input name="ime" value ''/><br/>
            </fieldset>
    <fieldset>
        <label>Spol:</label>
        Ž <input type="radio" name="spol" value="Ž" checked="true">
        M <input type="radio" name="spol" value="M" checked="true">
    <input type="submit" name="submit"value="Potvrdi formu">
        <br>
        <select name="grad">
            <option value="31000">Osijek</option>
            <option value="21000">Split</option>
            <option value="11000">Čamagajevci</option>
            
        </select>
</label>
</form>
    <div style='color:red'>
        <?php
    
     
        echo"pozdrav iz PHP-a;
        ?>