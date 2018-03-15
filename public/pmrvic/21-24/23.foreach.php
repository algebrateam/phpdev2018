<?php
/**
 * Prikazati rad s foreach petljom. Obraditi rad s poljima.
 * Prikazati rad samo s vrijednostima i rad s ključevima i
 * vrijednostima. Objasniti ključne riječi break i continue,
 * prikazati gdje i kako se koriste.
 */

// ne koristiti imena varijabli $i, $j, $k
//
$polje = [];

for ($i = 1; $i <= 10; $i++) {
    for ($j = 1; $j <= 10; $j++) {
        printf('<span style="background-color:rgb(%d,%d,%d)">&nbsp;&nbsp;&nbsp;&nbsp;</span>', (2 * $i * $j), (155 + $i * $j), ($i * $j));
        $polje[] = (2 * $i * $j).':'.(155 + $i * $j).':'.($i * $j);
    }
    echo '<br>';
}

foreach ($polje as $key => $value) {
    echo 'boja:'.$value.'<br>';
}

//($polje);

//echo $i;
