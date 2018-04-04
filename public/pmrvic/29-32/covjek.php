<?php



abstract class zivotinja
{
    public function glasanje()
    {
        echo "roar";
    }
}
class lav extends zivotinja
{
}
class Vepar extends zivotinja
{
    public function glasanje()
    {
        echo "ghgrgrgh";
    }
}


class covjek
{
    // var $ime="moje defaoultno ime";
    public $ime;

    public function __construct($novoime)
    {
        $this->ime=$novoime;
    }

    public function set_ime($ime)
    {
        $this->ime=$ime;
    }
    public function get_ime()
    {
        return $this->ime;
    }
    public function __destruct()
    {
        //	 echo "<br>nema više objekta zvanog ".$this->ime;
    }
}


interface Ikupac
{
    public function ispis();
}

//////////KLASA KUPAC///////////////
class kupac extends covjek implements Ikupac
{
    //svojstva kupca
    public $id_kupca;
    public $potroseni_iznos;

    // overridamo base/parent __constuct()
    public function __construct($novo_ime)
    {
        parent::__construct($novo_ime);
        $this->id_kupca=1234;
    }
    public function ispis()
    {
        echo "<br>+++++ ".$this->ime." ima id:".$this->id_kupca." a potrosio je:".$this->potroseni_iznos;
    }
}
