<!DOCTYPE html>
<html>
    <body>
        <?php
        echo 'Zadatak 1.';
        echo '<br>';

        function h_mj() {
            $mjeseci = array('Sječanj', 'Veljača', 'Ožujak', 'Travanj', 'Svibanj', 'Lipanj', 'Srpanj', 'Kolovoz', 'Rujan', 'Listopad', 'Studeni', 'Prosinac');

            $mjesec = $mjeseci[date('n') - 1];
            echo "<br> Trenutačni mjesec je : $mjesec";
        }

        h_mj();
        echo '<hr>';
        echo '<br>';
        echo 'Zadatak 2.';
        echo '<br>';
        echo '<br>';

        function tablica_imena($imena) {
            echo '<table border="1">';
            foreach ($imena as $key => $ime) {
                echo '<tr> <td>' . ($key + 1) . '</td><td>' . $ime . '</td></tr>';
            }
            echo '</table>';
        }

        $ucenici = array('Bela Skenderovic', 'Ilija Kovačević', 'Domagoj Zdero', 'Davor Peric', 'Ivana Crnjac', 'Ivan Vranjes', 'Magareta Drlic', 'Marin Zolota', 'Danijel Krizanovic', 'Darko Repinac');
        tablica_imena($ucenici);
        echo '<hr>';
        echo '<br>';
        echo 'Zadatak 3.';
        echo '<br>';

        function zbroj($a, $b) {
            $sum = $a + $b;
            return $sum;
        }

        function razlika($a, $b) {
            $raz = $a - $b;
            return $raz;
        }

//funkcija za djeljenje
        function podjeljeno($a, $b) {
            $dje = $a / $b;
            return $dje;
        }

//funkcija za umnozak
        function umnozak($a, $b) {
            $umn = $a * $b;
            return $umn;
        }

//funkcija za sveukupni ispis
        function ukupno($a, $b) {
            echo '<br>';
            echo 'Zbroj brojeva ' . $a . ' i ' . $b . ' je ' . zbroj($a, $b);
            echo '<br>';
            echo 'Razlika brojeva ' . $a . ' i ' . $b . ' je ' . razlika($a, $b);
            echo '<br>';
            echo 'Umnožak brojeva ' . $a . ' i ' . $b . ' je ' . umnozak($a, $b);
            echo '<br>';
            echo 'Količnik brojeva ' . $a . ' i ' . $b . ' je ' . podjeljeno($a, $b);
            echo '<br>';
        }

        $a = 8;
        $b = 2;
        ukupno($a, $b);
        echo '<hr>';
        echo '<br>';
        echo 'Zadatak 4.';
        echo '<br>';
        echo '<br>';

        function parametar() {
            $i = 0;
            $parametri = func_get_args();
            foreach ($parametri as $par) {
                $i++;
                echo 'Tip ' . $i . '. parametra je ' . gettype($par);
                echo '<br>';
            }
        }

        echo parametar("rijeka ", 128, 33.4567, ['1', '2', '3']);
        ?>

    </body>
</html> 