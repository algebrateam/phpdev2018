<?php

$a=2;

function inc_a() {
  global $a;
  $a++;
  echo $a.'<br>';
}

inc_a();
echo $a;

