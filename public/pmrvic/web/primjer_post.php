<!DOCTYPE html>
<html>
  <head>
    <title>TODO supply a title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
  </head>
  <body>
 
      
      <div style="width:80%">
        <form method="POST" action="primjer_post.php">
        <fieldset>
          <label>Ime:</label>
          <input name="ime" value=""/><br/>
          <br/>
          <label>Prezime:</label>
          <input name="prezime" value=""/><br/>
          <input type="password" name="password" value="MoJ@T@JNA">
        </fieldset>
        <fieldset>
          <label>Spol:</label>
          
   M<input type="radio" name="spol" value="M" checked="true"> 
   Ž<input type="radio" name="spol" value="Ž">
   <br>
   <select name="grad">
     <optgroup label="primarno">
     <option value="31000">Osijek</option>
     <option value="21000">Split</option>
     </optgroup>
     <optgroup label="sekundarno" disabled="true">
     <option value="12345">Čamagajevci</option>
     <option value="98572">Zagreb</option>
     </optgroup>
   </select>
     <br>
     <br>
<input type="checkbox" name="interesi[]" value="a"/>Sport<br>
<input type="checkbox" name="interesi[]" value="b"/>Glazba<br>
<input type="checkbox" name="interesi[]" value="c"/>Pjevanje<br>

   </select>
        
   <textarea name="napomena" cols="50">Ovo je neka napomena

   </textarea>
        
        </fieldset>
        
        <input type="submit" name="submit" value="Potvrdi formu">
      </form>
    </div>
    
    <br>
    <div style="color:red">
      <?php
      
      echo "Pozdrav iz PHP-a";
      echo "<pre>";
      print_r($_REQUEST);
      echo "<br>";
       print_r($_POST);
       echo "</pre>";
      ?>
      
    </div>
  </body>
</html>


