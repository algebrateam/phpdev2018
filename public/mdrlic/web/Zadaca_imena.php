<!DOCTYPE html>
<html>
    <head>
        <title>Obrazac</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        
        <div style="width:80%">
            <form method="POST" action="Zadaca_imena.php">
                <fieldset>
                    <label>Ime 1:</label> 
                    <input name="ime1" value="" /><br/>
                    <label>Prezime 1:</label> 
                    <input name="prezime1" value="" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime 2:</label> 
                    <input name="ime2" value="" /><br/>
                    <label>Prezime 2:</label> 
                    <input name="prezime2" value="" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime 3:</label> 
                    <input name="ime3" value="" /><br/>
                    <label>Prezime 3:</label> 
                    <input name="prezime3" value="" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime4 :</label> 
                    <input name="ime4" value="" /><br/>
                    <label>Prezime 4:</label> 
                    <input name="prezime4" value="" /><br/>
                </fieldset>
                <fieldset>
                    <label>Ime 5:</label> 
                    <input name="ime5" value="" /><br/>
                    <label>Prezime 5:</label> 
                    <input name="prezime5" value="" /><br/>
                </fieldset>
                    <input type="submit" name="submit" value="Povrdi formu"/>

            </form>
            
        </div>
        <br/>
        <div style="color:red">
            <?php
            if (isset($_POST['submit'])=='true') {
                echo "Ime i prezime 1: ".$_POST['ime1']." ".$_POST['prezime1'].'<br/>';
                echo "Ime i prezime 2: ".$_POST['ime2']." ".$_POST['prezime2'].'<br/>';
                echo "Ime i prezime 3: ".$_POST['ime3']." ".$_POST['prezime3'].'<br/>';
                echo "Ime i prezime 4: ".$_POST['ime4']." ".$_POST['prezime4'].'<br/>';
                echo "Ime i prezime 5: ".$_POST['ime5']." ".$_POST['prezime5'].'<br/>';
            }
            ?>
            
        </div>
    </body>
</html>


