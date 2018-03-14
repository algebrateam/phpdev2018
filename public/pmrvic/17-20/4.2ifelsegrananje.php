<?php

$naziv = "al";
if (strlen($naziv) >= 5) {

  echo "Odlično!";
} else {

  if (strlen($naziv) >= 3 && strlen($naziv) <= 4) {
    echo "Ajde ok je";
  } else {
    echo "ništa od igrica";
  }
}

echo "<hr>Skraceni oblici<br>";

$a = 6;
$b = ($a < 6) ? "ispunjen uvjet" : "nije ispunjen";
//<uvijet>?TRUE:FALSE
echo $b;
?>