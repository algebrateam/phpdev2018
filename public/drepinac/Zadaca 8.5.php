<!DOCTYPE html>
<html>
    <body>

        <?php
        echo 'Zadatak 1. Sadržaj datoteke DigitalID.txt</br><br>';
        $handle = fopen('DigitalID.txt', 'r');
        $sadrzaj = fread($handle, filesize('DigitalID.txt'));
        echo $sadrzaj;
        fclose($handle);

        echo '<br>';
        echo '<hr>';

        echo 'Zadatak 2.</br>';
        echo '<form action="upis_teksta.php">
                Neki tekst:<br>
                <textarea name="sadrzaj" rows="5" cols="30"></textarea>
                <input type="submit" value="Klikni za spremanje teksta">
              </form> ';

        echo '<br>';
        echo '<hr>';
        echo 'Zadatak 3.</br>';

        $handle=fopen('tekst.txt', 'r');
        $sadrzaj=fread($handle, filesize('tekst.txt'));
        echo '<form action="upis_teksta.php">
                Neki tekst:<br>
                <textarea name="sadrzaj" rows="5" cols="30">'.$sadrzaj.'</textarea>
                <input type="submit" value="Klikni za izmjenu teksta">
              </form> ';

        ?>
    </body>
</html> 