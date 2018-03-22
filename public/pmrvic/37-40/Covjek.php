<?php
class Covjek
{
    public function __construct()
    {  // DEFAULTNA METODA KREIRANJA
        echo "Rodio se jedan covjek<br>";
    }
    public function __destruct()
    { // DEFAULTNA METODA KREIRANJA
        echo "<br> XXX Kaput<br>";
    }
  
    private $ime;
    public function set_ime($novo_ime)
    {
        $this->ime=ucfirst($novo_ime);  //Mutator
    }
    public function get_ime()
    {
        $samo_ime=explode(' ', $this->ime);
        return $samo_ime[0];      // Mutator
    }
    public function get_prezime()
    {
        $samo_ime=explode(' ', $this->ime);
        return $samo_ime[2];      // Mutator
    }
}
