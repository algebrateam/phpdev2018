<!DOCTYPE html>
<html>
    <head>
        <title>Forma</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
       
        <div style="width:80%">
        
            <form method="POST" action="zadatak.php">
            <fieldset>
                <label>Ime:</label>
                <input name="ime" value=""/><br/>
                <br/>
                <label>Ime:</label>
                <input name="ime2" value=""/><br/>
                <br>
                <label>Ime:</label>
                <input name="ime3" value=""/><br/>
                <br/>
                <label>Ime:</label>
                <input name="ime4" value=""/><br/>
                <br/>
                <label>Ime:</label>
                <input name="ime5" value=""/><br/>
                <br/>
            </fieldset>
            
            <input type="submit" name="submit" value="Potvrdi formu">
            
        </form>
         </div>    
        <div>
            <?php
            echo "varijabla ime je: ".$_POST['ime'].'<br>';
            echo "varijabla ime je: ".$_POST['ime2'].'<br>';
            echo "varijabla ime je: ".$_POST['ime3'].'<br>';
            echo "varijabla ime je: ".$_POST['ime4'].'<br>';
            echo "varijabla ime je: ".$_POST['ime5'].'<br>';
                    
            
            ?>
        </div>
       
    </body>
</html>
