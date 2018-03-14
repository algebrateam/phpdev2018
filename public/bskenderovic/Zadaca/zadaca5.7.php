<?php

  echo '<hr>';
  echo 'Zadatak 1.';
  echo '<br>';
  echo '<br>';

  $a = 4;
  $b = 2;
  
  if ($a < $b){
      echo $a.' je manji od '.$b;
  }
  else {
    echo $a.' je veći od '.$b;
  }
  
  echo '<br>';
  echo '<hr>';
  echo 'Zadatak 2.';
  echo '<br>';
  echo '<br>';
  
  $a = 6;
  $b = 21;
  
  if ($a > $b){
      $a++;
  }
  else {
      $a--;
  }
  
  echo $a.' '.$b;
  
  echo '<br>';
  echo '<hr>';
  echo 'Zadatak 3.';
  echo '<br>';
  echo '<br>';
  
  $i = 1;
  
  while ($i<=50){
      echo $i.'</br>';
      $i++;
  }
  
  echo '<br>';
  echo '<hr>';
  echo 'Zadatak 4.';
  echo '<br>';
  echo '<br>';
  
  $suma = 0;
  
  for ($i=20; $i<=30;$i++){
      $suma += $i;
  }
  
  echo 'Suma brojeva od 20 do 30 je '.$suma;
  echo '<hr>';
  
?>