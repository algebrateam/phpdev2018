<?php

class Tablica{
  private $redova;
  private $stupaca;
  private $data;
  private $template='<table>';
  
  public function __construct($redova=5,$stupaca=5) {
    $this->redova=$redova;
    $this->stupaca=$stupaca;
  }
  public function setData($inputarr){
    $this->data=$inputarr;
    $this->redova=count($inputarr);
    $this->stupaca=count($inputarr[0]);
  }

  public function tblHeader(){
    $temp='<thead>
        <tr>';
    for($i=0;$i<$this->stupaca;$i++){
      $temp .= '<td> XXX </td>';
    }
    $temp .= '</tr></thead>';
    return $temp;
    }

  public function tblBody(){
/*
 *   [[1, 'Maja', 'Majic']
 *   ,[2, 'Ivana', 'Ivanic']
 *   ,[3, 'Kruno', 'Krunic']];
 */
    
    $temp='<tbody>';
    for($i=0;$i<$this->redova;$i++){
      $temp.='<tr>';
       for($j=0;$j<$this->stupaca;$j++){
         $temp .= '<td>';
         $temp .= $this->data[$i][$j];
         $temp .= '</td>';
       }
      $temp.='</tr>'; 
    }
    $temp .= '</tbody>';
    return $temp;
    }    
  public function ispis(){
    echo '----TABLICA----';
    echo $this->template;
    echo $this->tblHeader();
    echo $this->tblBody();
    echo '</table>';
  } 
}
/* 
<table>
      <thead>
        <tr>
          <td>Broj </td><td>Ime</td><td>Prezime </td>
        </tr>
      </thead>
      <tbody>
        <tr><td>1 </td><td>Maja</td><td>Jurić </td></tr>
        <tr><td>2 </td><td>Iva</td><td>Jukić </td></tr>
        <tr><td>3 </td><td>Ante</td><td>Jere </td></tr>
      </tbody>
      
    </table>
 */

