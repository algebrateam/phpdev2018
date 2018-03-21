<?php

class Covjek
{
    public $ime;
    public function set_ime($novo_ime)
    {
        $this->ime=$novo_ime;
    }
    public function get_ime()
    {
        return $this->ime;
    }
}
$c=new Covjek();
$c->set_ime('Danijel');
echo $c->ime;
