<!DOCTYPE html>
<html lang="hr">

<head>
    <title>Osnovni Bootstrap primjer</title>
    <meta charset="utf-8">
    <!-- To ensure proper rendering and touch zooming, add the following <meta> tag inside the <head> element: -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Osnovni fajlovi za bootstrap -->

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body>

  <?php
      $naslov = 'Ovo je naslov 3';
  ?>


      <div class="container">
          <h1><?php echo $naslov; ?></h1>
          <p>Ja sam podnaslov.</p>
      </div>





      <?php

         $colors = array("red", "green", "blue", "yellow");

      ?>

      <div class="container">
       <h2>Basic Table</h2>
       <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>
       <table class="table table-striped">
         <thead>
           <tr>
             <th>Firstname</th>
             <th>Lastname</th>
             <th>Email</th>
           </tr>
         </thead>
         <tbody>

           <?php  foreach ($colors as $color) {
             echo '
             <tr>
                 <td>'.$color.'</td>
                 <td>Doe</td>
                 <td>john@example.com</td>
               </tr>
              ';
           } ?>


         </tbody>
       </table>
      </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>

</html>
