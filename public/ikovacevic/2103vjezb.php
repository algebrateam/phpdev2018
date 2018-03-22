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
$c->set_ime('Ivana Brlic Mazuranic');
echo $c->ime;
// veliko prvo slovo
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
