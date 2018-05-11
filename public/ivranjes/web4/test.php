<?php
include_once './dbconn.php';
?>

<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "2016"
	},
	data: [{
		type: "pie",
		startAngle: 240,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: 79.45, label: "magistar"},
			{y: 7.31, label: "Bingoooooooo"},
			{y: 7.06, label: "Baidu"},
			{y: 4.91, label: "Yahoo"},
			{y: 1.26, label: "Others"}
		]
	}]
});
chart.render();

}
</script>
</head>
<body>
<div id="chartContainer" style="height: 1300px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>

