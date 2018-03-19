<!DOCTYPE html>
<html>
    <body>

        <?php
        echo 'Zadatak 1.</br>';
        $imena = array('Darko','Juraj','Leonora','Ivana','Mislav');

        foreach ($imena as $ime) {
            echo $ime.'<br>';
        }
        
        echo '<hr>';

        echo 'Zadatak 2.</br>';
        $imena = array('ime5'=>$imena[0],'ime4'=>$imena[1],'ime3'=>$imena[2],
                       'ime2'=>$imena[3],'ime1'=>$imena[4]);
       
        foreach ($imena as $key => $naziv) {
            echo 'Element '.$key.' ima vrijednost '.$naziv.'<br>';
        }

        echo '<hr>';
        echo 'Zadatak 3.</br>';

        $imena1 = array('Darko','Juraj','Leonora','Ivana','Mislav');
        sort($imena1);
                
        for ($i=0;$i<=4;$i++) {
            echo $imena1[$i].'<br>';
        }
        
        echo '<hr>';
        echo 'Zadatak 4.</br>';
        ksort($imena);
        foreach ($imena as $key => $ime) {
            echo 'Element '.$key.' sadrži '.$ime.'</br>';
        }

        echo '<hr>';
        echo 'Zadatak 5.</br>';
        $niz = array();
        for ($i=1;$i<=100;$i++) {
            $niz[]=$i;
        }
        foreach ($niz as $broj) {
            echo $broj.'</br>';
        }
        

        ?>

    </body>
</html> 