<<!DOCTYPE html>
<html>
<head>
    <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>
    <div style="width:80%">
        <form  method="POST" action="zadatak_1.php">
            <fieldset>
                <label>Ime:</label>
                <input name="ime1" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime1" value=""/>
                
            </fieldset>
            
            <fieldset>
                <label>Ime:</label>
                <input name="ime2" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime2" value=""/>
                
            </fieldset>
        
            <fieldset>
                <label>Ime:</label>
                <input name="ime3" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime3" value=""/>
                
            </fieldset>
       
            <fieldset>
                <label>Ime:</label>
                <input name="ime4" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime4" value=""/>
                
            </fieldset>
        
            <fieldset>
                <label>Ime:</label>
                <input name="ime5" value=""/><br/>
                <label>Prezime:</label>
                <input name="prezime5" value=""/>
                
            </fieldset>
            <input type="submit" name="submit" value="Potvrdi formu">
        </form>
    </div>
    </div>
    <br>
    <div style="color: red;">
        <?php
        echo 'Ime1 je:'.$_POST['ime1'].'<br>';
        echo 'Prezime je:'.$_POST['prezime1'].'<hr>';
        echo 'Ime1 je:'.$_POST['ime2'].'<br>';
        echo 'Prezime je:'.$_POST['prezime2'].'<hr>';
        echo 'Ime1 je:'.$_POST['ime3'].'<br>';
        echo 'Prezime je:'.$_POST['prezime3'].'<hr>';
        echo 'Ime1 je:'.$_POST['ime4'].'<br>';
        echo 'Prezime je:'.$_POST['prezime4'].'<hr>';
        echo 'Ime1 je:'.$_POST['ime5'].'<br>';
        echo 'Prezime je:'.$_POST['prezime5'].'<hr>';
        ?>
        
    </div>
</body>
</html>


