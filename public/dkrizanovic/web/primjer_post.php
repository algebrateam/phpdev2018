
<html>
    <head>
        <title>Forma</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <div style="width:20%">
                <form method="POST" action="primjer_post.php">
                    <fieldset>
                        <label>Ime:</label>
                        <input name="ime" value="Unesi ime"/><br/><br/>
                        <label>Prezime:</label>
                        <input name="prezime" value="Unesi prezime"/><br/>
                        <input type="password" name="password" value="MoJ@"/>
                    </fieldset>
                    <fieldset>
                        <label>Spol:</label>
                        M <input type="radio" name="spol" value="M" checked="true">
                        Ž<input type="radio" name="spol" value="Ž">
                        <br>
                        <select name="grad">
                            <optgroup label="Primarno">
                                <option value="31000">Osijek</option>
                                <option value="21000">Split</option></optgroup>
                            <optgroup label="Sekundarno">
                                <option value="12312">Čamagajevci</option>
                                <option value="10000">Zagreb</option>
                            </optgroup>
                        </select>
                        <br>
                        <br> 
                        <input type="checkbox" name="interesi[]" value="1"/>Sport<br>
                        <input type="checkbox" name="interesi[]" value="2"/>Glazba<br>
                        <input type="checkbox" name="interesi[]" value="3"/>Pjevanje<br>
                        <textarea name="napomena" cols="50">Ovo je neka napomena</textarea>
                    </fieldset>
                    <input type="submit" name="submit" value="Potvrdi formu">
                </form>

            </div>
            <br>
            <div style="color:red">
                <?php
                echo "Pozdrav iz PHP-a";
                echo "<br>";
                echo "varijabla ime je: " . $_POST['ime'] . '<br>';
                echo "varijabla grad je " . $_POST['grad'] . '<br>';
                if ($_POST['grad'] === '31000') {
                    echo "Osijek";
                }
                switch ($_POST['grad']) {
                    case 21000: echo "Split";
                        break;
                    case 31000: echo "Osijek";
                        break;
                    case 10000: echo "Zagreb";
                        break;



                    default: echo "Čamamagajevci";
                        break;
                }
                echo "<hr>";
                
                foreach ($_POST as $key => $value) {
                    if (gettype($value)=='array') {
                        print_r($value);
                    } else {
                        echo $key. "---->".$value."<br>";
                    }
                }
                echo "<hr>";
                echo "<pre>";
                //  print_r($_REQUEST);
                echo "<br>";
                print_r($_POST);
                echo "</pre>";
                ?>

            </div>
        </div>
    </body>
</html>

