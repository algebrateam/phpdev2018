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
 

    <div class="container">
        <h1>Ovo je naslov</h1>
        <p>Ja sam podnaslov.</p>
    </div>



    <div class="container">
      <h2>Basic Table</h2>
      <p>The .table class adds basic styling (light padding and only horizontal dividers) to a table:</p>            
      <table class="table">
        <thead>
          <tr>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Email</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>John</td>
            <td>Doe</td>
            <td>john@example.com</td>
          </tr>
          <tr>
            <td>Mary</td>
            <td>Moe</td>
            <td>mary@example.com</td>
          </tr>
          <tr>
            <td>July</td>
            <td>Dooley</td>
            <td>july@example.com</td>
          </tr>
        </tbody>
      </table>
    </div>


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
</body>

</html>