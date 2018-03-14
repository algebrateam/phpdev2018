<?php
/**
 * 1.Uvod
 * Obaviti uvodnu prezentaciju s polaznicima. Proći kratku
 * povijest programiranja, uvod u web aplikacije. Objasniti
 * ulogu PHP jezika u web prostoru.
 * -.
 *
 * 2.
 * Objasniti pojam HTML-a. Objasniti markup jezike. Prikazati
 * razlike u interpretaciji dokumenta ovisno o pregledniku.
 * Prikazati minimalni HTML5 dokument. Objasniti prikaz u
 * browseru i kako se dolazi do prikaza iz izvornog koda.
 *
 * 3.
 * HTML –markeri i atributi
 * -
 * Prikazati rad s markerima unutar HTML-a. Prikazati osnovne
 * markere (parovi otvarajućih i zatvarajućih) i
 * samozatvarajuće markere. Objasniti ulogu atributa.
 * Primjerima prikazati kako promjena atributa utječe na način
 * prikaza HTML elementa.
 *
 * 4
 * HTML – tablice i liste
 * -
 * Objasniti HTML tablice. Prikazati rad s markerima za tablice,
 * redove, podatke i zaglavlja tablice (<table>, <tr>, <td>,
 * <th>). Prikazati rad s poredanim, neporedanim i opisnim
 */
?>
<!DOCTYPE html>
<html>
<body>
<head>
	<style type="text/css">

tr:nth-child(even) {background: #FFBFBF}
tr:nth-child(odd) {background: #FFF}

	</style>

</head>

Dobar dan ovo je html <br>
<div align="center"> ovo je neko centrirani text </div>

<div align="center"> 
  <font color="red">
	ovo je neko obojani text 
  RADI F12 ???
  </font>
</div>


<div align="center" style="color:#00FF00"> ovo je neki obojani text </div>

<?php
echo 'Ovo je neki text pisan u phpuuuu';
?>
<br/><br/>
<!-- Ovo je neki moj HTML komentar -->
<table border="1">
	<tr><th>broj</th><th>ime</th></tr>
	<tr>
      <td>1.</td>
      <td>Perica</td>
	</tr>
	<tr>
      <td>2.</td>
      <td>Marica</td>
	</tr>
	<tr>
      <td>3.</td>
 <td>Marica</td><td>Marica</td><td>Marica</td>
	</tr>


</table>

<a href="Koala.jpg" target="_blank">
  <img src="Koala.jpg" width="20%" height="150px">
  <br>
  ovo je neki text unutar a
</a>

<ul>
  <li>
    prva
  </li>

  <li>
    druga

    <ul>
     <li>nešto uvučeno</li>
    </ul>

  </li>
  <li>
    prva
  </li>

  <li>
    druga
  </li>



</ul>

<pre>
<?php

//*****************************************
/*

Multiline comments

aaaaaa
ssssss
dddddd

*/

// ovo je neki single line comment

// sdfgdfspogkojk

echo "ovo je neki ispis\n\t";

echo 'ovo je neki ispis';

?>

</pre>

<?php
//phpinfo();

$ovajtzext = 'ovo je neki sadržaj mog texta';
$ovajTzext = 'xxx xxxxx xxxxx xxx x';

echo $ovajtzext;
echo $ovajtzext;
echo $ovajTzext;
echo $ovajtzext;

echo '<br><br>';

$a = 10;
$b = 10;

echo 'zbroj 10 i 20 je: ';
echo $a + $b;

if ($a == $b) {
    echo '<br><br>Varijabla a je jednaka varijabli b';
    echo '<br>MUHAHAHAHAHAAA<br>';
}
echo '<br>varijabla a je: '.$a;
?>



<br><br><br><br><br><br><br><br>

<?php 
echo "<table border='1'>";

for ($i = 0; $i < 10; $i++) {
    // prazna petlja

    echo 'hvala na paznji, dovidzenja!';
}
  echo '<tr>';
  echo '<td>xxx</td><td>xxx</td><td>xxx</td><td>xxx</td>';
    echo '</tr>';
      echo '<tr>';
  echo '<td>xxx</td><td>xxx</td><td>xxx</td><td>xxx</td>';
    echo '</tr>';

echo '</table>';

?>
<br><br><br><br><br><br><br><br>
</body>
</html>