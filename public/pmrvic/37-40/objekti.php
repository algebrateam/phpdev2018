<?php
include 'Covjek.php';
include 'Kupac.php';

$c=new Covjek();
$c->set_ime('ivana Brlić Mažuranić');
// echo $c->ime; ovo ne može jer je $ime private a ne public
echo $c->get_ime();
echo $c->get_prezime();
$c2=new Covjek();
$c3=new Covjek();
$c4=new Covjek();
$c5=new Covjek();

$k=new Kupac();
$k->set_ime('Djuro');
echo $k->potroseniIznos;