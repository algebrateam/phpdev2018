<?php

class tablica
{
    private $izlaz;
    protected function isAssoc(array $arr) //provjerava da li je polje asociativno ili indeksno
        {
            if (array() === $arr) {$rezultat = false;} 
            else
               {$rezultat = array_keys($arr) !== range(0, count($arr) - 1);}
            return $rezultat;
        }
        
    public function form_datum($dat){
        $this->izlaz=substr($dat,8,2).'.'.substr($dat,5,2).'.'.substr($dat,0,4);
        return $this->izlaz;
        }
        
    public function zaglavlje ($podaci){
        foreach($podaci as $key => $value){
        if ($this->isAssoc($podaci)){
            echo '<thead><tr style="background-color: gray"><th>Redni<br>br';
            foreach($value as $kljuc => $vrijednost){
                echo '<th>'.$kljuc.'</th>';
            }
                echo '</tr></thead>';
                break;
            }
        }

    }
    
    public function tijelo ($podaci){
        foreach($podaci as $key => $value){
            echo '<tr><td style="text-align:right">'.$key.'.</td>';
            echo '<td>'.$value['ime'].'</td>';
            echo '<td>'.$value['prezime'].'</td>';
            echo '<td>'.$this->form_datum($value['datum']).'</td>';
            echo '<td>'.'<select>';
                if ($value['placeno'] == 'Da') {
                    echo '<option value="Da" Selected>Da</option>';
                    echo '<option value="Ne">Ne</option>';
                } else {
                    echo '<option value="Ne" Selected>Ne</option>';
                    echo '<option value="Da">Da</option>';
                }
                echo '</select></td>';
            }
        echo '</tbody>';
        }
}