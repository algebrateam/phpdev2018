<?php
function show_naslov($naslov='film')
{ 
    switch($naslov):
    case 'film':
         $var='Terminator';
        break;
    case 'serija':
        $var='Dr.House';
        break;
    case'no_title':
        $var=";
 break;
 endswitch;
 echo $var;}
     function show_imena($imena=array())
         {
         foreach($imena as $ime)
             {
             echo $ime;
                 }
                 }show_naslo();
                 show_imena();
endswitch;

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
