<?php
class Covjek {
    public $ime;
    function set_ime($novo_ime)
    {
        $this ->ime = $novo_ime;
    }
    
    function get_ime()
    {
        return $this -> ime;
    }
}
$c = new Covijek ();

