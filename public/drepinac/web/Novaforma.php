<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div style="width:70%">
            <form method="POST" action="Novaforma.php">
                <fieldset>
                    <label>Ime1</label> 
                    <input name="ime1" value="Unesi ime1" /><br/>
                    <label>Prezime1</label> 
                    <input name="prezime1" value="Unesi prezime1" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime2</label> 
                    <input name="ime2" value="Unesi ime2" /><br/>
                    <label>Prezime2</label> 
                    <input name="prezime2" value="Unesi prezime2" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime3</label> 
                    <input name="ime3" value="Unesi ime3" /><br/>
                    <label>Prezime3</label> 
                    <input name="prezime3" value="Unesi prezime3" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime4</label> 
                    <input name="ime4" value="Unesi ime4" /><br/>
                    <label>Prezime1</label> 
                    <input name="prezime4" value="Unesi prezime4" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime5</label> 
                    <input name="ime5" value="Unesi ime5" /><br/>
                    <label>Prezime1</label> 
                    <input name="prezime5" value="Unesi prezime5" /><br/>
                </fieldset>
                    <input type="submit" name="submit" value="Povrdi formu"/>

            </form>
            
        </div>
        <br/>
        <div style="color:green">
            <?php
            if (isset($_POST['submit'])=='true') {
                echo "Ime i Prezime 1 je ".$_POST['ime1']." ".$_POST['prezime1'].'<br/>';
                echo "Ime i Prezime 2 je ".$_POST['ime2']." ".$_POST['prezime2'].'<br/>';
                echo "Ime i Prezime 3 je ".$_POST['ime3']." ".$_POST['prezime3'].'<br/>';
                echo "Ime i Prezime 4 je ".$_POST['ime4']." ".$_POST['prezime4'].'<br/>';
                echo "Ime i Prezime 5 je ".$_POST['ime5']." ".$_POST['prezime5'].'<br/>';
            }
            ?>
            
        </div>
    </body>
</html>


