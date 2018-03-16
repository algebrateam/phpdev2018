<!DOCTYPE html>
<html>
    <body>

        <?php
        echo 'Zadatak 1.</br>';
        $a = 4;
        $b = 2;

        if ($a > $b) {
            echo 'Varijabla $a je veća od $b';
        } elseif ($a < $b) {
            echo 'Varijabla $a je manja od $b';
        } else {
            echo 'Varijable $a i $b su jednake';
        }
        echo '<hr>';

        echo 'Zadatak 2.</br>';
        $a = 7;
        $b = 9;
        echo 'Vrijednost varijabli prije izmjene je $a:'.$a.', $b:'.$b.'<br>';
        if ($a > $b) {
            $a += 1;
        } elseif ($b > $a) {
            $b--;
        }
        echo 'Nakon izmjene vrijednost varijable $a je:'.$a.', a vrijednost varijable $b je:'.$b;

        echo '<hr>';
        echo 'Zadatak 3.</br>';

        $a = 1;
        $b = 50;
        while ($a <= 50) {
            echo $a.' - '.$b.'<br>';
            $a++;
            $b--;
        }
        echo '<hr>';

        echo 'Zadatak 4.</br>';
        $zbroj = 0;
        for ($i = 20; $i <= 30; $i++) {
            $zbroj += $i;
        }
        echo 'Zbroj brojeva od 20 do 30 nakon for petlje je:'.$zbroj.'<br>';
        $zbroj = 0;
        $i = 20;
        while ($i <= 30) {
            $zbroj += $i;
            $i++;
        }
        echo 'Zbroj brojeva od 20 do 30 nakon while petlje je:'.$zbroj.'<br>';
        $zbroj = 0;
        $i = 20;
        switch ($i):
            case 20: {
                    $zbroj += $i;
                    $i++;
                }
            case 21: {
                    $zbroj += $i;
                    $i++;
                }
            case 22: {
                    $zbroj += $i;
                    $i++;
                }
            case 23: {
                    $zbroj += $i;
                    $i++;
                }
            case 24: {
                    $zbroj += $i;
                    $i++;
                }
            case 25: {
                    $zbroj += $i;
                    $i++;
                }
            case 26: {
                    $zbroj += $i;
                    $i++;
                }
            case 27: {
                    $zbroj += $i;
                    $i++;
                }
            case 28: {
                    $zbroj += $i;
                    $i++;
                }
            case 29: {
                    $zbroj += $i;
                    $i++;
                }
            case 30: {
                    $zbroj += $i;
                    $i++;
                }
        endswitch;

        echo 'Zbroj brojeva od 20 do 30 nakon switch grananja je:'.$zbroj.'<br>';
        ?>

    </body>
</html> 