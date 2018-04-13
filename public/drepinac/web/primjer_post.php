<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div style="width:70%">
            <form method="POST" action="primjer_post.php">
                <fieldset>
                    <label>Ime</label> 
                    <input name="ime" value="Unesi ime" /><br/>
                    <label>Prezime</label> 
                    <input name="prezime" value="Unesi prezime" /><br/>
                    <input type="password" name="password" value="MoJ@T@JNA"/>
                </fieldset>
                <fieldset>
                    <label>Spol: </label> 
                    M <input type="radio" name="spol" value="M">
                    Ž <input type="radio" name="spol" value="Ž" checked="true">
                    <br>
                    <select name="grad">
                        <optgroup label="primarno">
                            <option value="31000">Osijek</option>
                            <option value="21000">Split</option>
                        </optgroup>
                        <optgroup label="sekundarno">
                            <option value="12345">Čamagajevci</option>
                            <option value="98572">Zagreb</option>
                        </optgroup>
                    </select>
                    <br/>
                    <input type="checkbox" name="interesi[]" value="a"/> Sport<br/>
                    <input type="checkbox" name="interesi[]" value="b"/> Glazba<br/>
                    <input type="checkbox" name="interesi[]" value="c"/> Pjevanje<br/>
                        
                    </select>
                    <textarea name="napomena" cols="50">Ovo je neka napomena
                    </textarea>

                </fieldset>
                    <input type="submit" name="submit" value="Povrdi formu"/>

            </form>
            
        </div>
        <br/>
        <div style="color:red">
            <?php
            echo "Pozdrav iz PHP-a";
            echo "varijabla ime je ".$_POST['ime'].'<br/>';
            echo "varijabla prezime je ".$_POST['prezime'].'<br/>';
            echo "varijabla grad je ".$_POST['grad'].'<br/>';
            
            switch ($_POST['grad']) {
                case 21000: echo "Split"; break;
                case 31000: echo "Osijek"; break;
                case 12345: echo "Čamagajevci"; break;
                case 98572: echo "Zagreb"; break;
                default: echo "Satnica";
                    break;
}
echo "<hr/>";
foreach ($_POST as $key => $value) {
//    echo gettype($value);
    if (gettype($value)=="array") {
       echo "<pre>";
       print_r($value); 
       echo "</pre>";
    } else {
    echo $key."--->".$value."<br/>";}
}
            
            
            echo "<pre>";
         //   print_r($_REQUEST);
            echo "<br/>";
            print_r($_POST);
           
            echo "</pre>";
            ?>
            
        </div>
    </body>
</html>

