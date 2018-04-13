<!DOCTYPE html>
<html>
<head>
    <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div style="width:80%">
        <form  method="POST" action="primjer_post.php">
            <fieldset>
                <label>Ime:</label>
                <input name="ime" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime" value=""/><br/>
                <input type="password" name="password" value="Moj@T@JNA"
                
            </fieldset>
            <fieldset>
                <label>Spol:</label>
                M<input type="radio" name="spol" value="M" checked="true">
                Ž<input type="radio" name="spol" value="Ž">
                <br>
                <select name="grad">
                    <optgroup label="primarno">
                        <option value="31000">Osijek</option>
                        <option value="21000">Split</option>
                    </optgroup>
                    <optgroup label="sekundarno">
                        <option value="10000">Zagreb</option>
                        <option value="21261">Runovići</option>
                    </optgroup>
                </select>
                    <br>
                    <input type="checkbox" name="interesi[]" value="1"/>Sport<br>
                    <input type="checkbox" name="interesi[]" value="2"/>Glazba<br>
                    <input type="checkbox" name="interesi[]" value="3"/>Pjevanje<br>
                </select>
                
                <textarea name="napomena" cols="50">Ovo je neka napomena</textarea>
            </fieldset>
            <input type="submit" name="submit" value="Potvrdi formu">
        </form>
        
    </div>
    <br>
    <div style="color: red;">
        <?php
        echo "pozdrav iz PHP-a";
        echo "<br>";
        echo 'varijabla ime je:'.$_POST['ime'].'<br>';
        echo 'varijabla grad je:'.$_POST['grad'].'<br>';
        
//        if($_POST['grad']==21000) {
//            echo 'Split';
//        }
        switch ($_POST['grad']) {
            case 21000: echo 'Split'; break;
            case 31000: echo 'Osijek'; break;
            case 10000: echo 'Zagreb'; break;
            case 21261: echo 'Runovići'; break;
            default: echo 'Čamagajevci'; break;
}
echo '<hr>';
foreach ($_POST as $key => $value) {
    if (gettype($value)=='array') {
        print_r($value);
    } else {
        echo $key."  ---->  ".$value.'<br>';
    }
}
echo '<hr>';
        
        echo "<pre>";
        print_r($_REQUEST);
        echo "<br>";
        print_r($_POST);
        echo "</pre>";
        ?>
    </div>

</body>
</html>


