<?php

include "covjek.php";
/**
*
*/
/**
*
*/

// $z1=new zivotinja();  // abstraktne klase se ne mogu instancirati
//
$l1=new lav();
$l1->glasanje();

$v1=new Vepar();
$v1->glasanje();



$c1=new covjek('Ivica');

class baseokvir
{
    public $c1;

    public $bojatexta;
    public function __construct(covjek $c1)
    {
        $this->c1=$c1;
    }
    public function bojatexta($boja)
    {
        $this->bojatexta=$boja;
    }
}

// $k1=new Ikupac();   // Ne možemo INSTANCIRATI interface

$b1=new baseokvir(new covjek('Ljubica'));
echo $b1->c1->get_ime();

class okvir extends baseokvir
{
    public $height=100;
    public $width=100;
    public $position='absolute';
    public $top=100;
    public $left=100;
    public $bojaokvira='#4F8FDF';
    public $unutarnji_text="neki text";
    
    public function __construct($boja, $top)
    {
        $this->bojaokvira=$boja;
        $this->top=$top;
    }

    public function crtaj()
    {
        echo "<div 
		id='okvir'
		style='background-color:$this->bojaokvira; 
		width:$this->width; 
		height:$this->height; 
		position:$this->position; 
		top:$this->top;
		left:$this->left'>
		$this->unutarnji_text</div>";
    }
}


$d1=new okvir('#4F8FDF', 100);
$d1->crtaj();

$d2=new okvir('green', 150);
$d2->crtaj();

for ($i=0;$i<10;$i++) {
    (new okvir('green', 150*$i))->crtaj();
}

$nasarray= array($d1,$d2);

foreach ($nasarray as $key => $value) {
    $value->bojaokvira="yellow";
    $value->unutarnji_text="xxxxxxxxx";
    $value->left=250;
    $value->crtaj();
}

?>

<div>lksjdfkljhaws</div>