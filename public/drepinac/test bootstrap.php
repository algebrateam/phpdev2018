<?php
$example = 'Primjer';
$wellArray = [
'Arrays are a lot of fun.',
'Bootstrap is an amazing development tool to use with PHP',
'With bootstrap you can quickly code and design beautiful websites',
];
?>
<html>
<head>
<title>PHP in HTML Example</title>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel='stylesheet' type='text/css' href='//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css'>
</head>
<body>
<h1>Short code <?=$example; ?></h1>
<?php foreach ($wellArray as $well) {
    echo "<div class='well'>$well</div>";
}
?>
</body>
</html>
