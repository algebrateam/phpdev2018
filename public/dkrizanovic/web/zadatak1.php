<html>
    <head>
        <title>Zadatak1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>
            <div style="width:20%">
                <form method="POST" action="zadatak1.php">

                    <fieldset>
                        <label>Ime:</label>
                        <input name="ime1" value="Unesi ime"/><br/><br/>
                        <label>Ime:</label>
                        <input name="ime2" value="Unesi ime"/><br/><br/>
                        <label>Ime:</label>
                        <input name="ime3" value="Unesi ime"/><br/><br/>
                    </fieldset>
                    <input type="submit" name="submit" value="Potvrdi formu">
                </form>
                <?php
                echo "<br>";
                echo "varijabla ime je: " . $_POST['ime'] . '<br>';
                echo "varijabla ime je: " . $_POST['ime2'] . '<br>';
                echo "varijabla ime je: " . $_POST['ime3'] . '<br>';
                
                ?>
            </div>
        </div>
    </body>
</html>
