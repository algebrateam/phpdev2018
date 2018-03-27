<!DOCTYPE html>
<html>
    <body>

        <?php
        include "data.php";
        require "class/tablica.php";
        $tab=new tablica();
        echo '<table border=1>';
        $tab->zaglavlje($data);
        $tab->tijelo($data);
        echo '</table>';
        ?>
    </body>
</html> 