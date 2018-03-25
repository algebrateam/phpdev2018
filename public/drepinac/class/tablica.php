<?php

class tablica
{
    protected function isAssoc(array $arr) //provjerava da li je polje asociativno ili indeksno
        {
            if (array() === $arr) {$rezultat = false;} 
            else
               {$rezultat = array_keys($arr) !== range(0, count($arr) - 1);}
            return $rezultat;
        }
    public function form_datum ($datum){
        return substr($datum,8,2).'.'.substr($datum,5,2).'.'.substr($datum,0,4);
        }
    public function zaglavlje ($podaci){
        foreach($podaci as $key => $value){
        if (isAssoc($podaci)){
            echo '<thead><tr style="background-color: gray"><th>Redni<br>br';
            foreach($value as $kljuc => $vrijednost){
                echo '<th>'.$kljuc.'</th>';
            }
                echo '</tr></thead>';
                break;
            }
        }

    }
        
}