<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="glyphicons-halflings-regular.woff2">
    <link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
    <script type="text/javascript" src="style/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="style/bootstrap.min.js"></script>
    <title>Document</title>
</head>
<body style="margin: auto; border:1px solid back">
    <div>
    <div>
			<?php
			include("header.php");
			?>
		</div>
		<div>
			<?php
			include("menu2.php");
			?>
        </div><br>
        <div>
        <table class="bang" id='bangdiemdanh' >
        </table><br>
        <button id="btnThem">Điểm danh</button>
        </div>
        <div>
			<?php 
			include("footer.php")
			?>
        </div>
    </div>
</body>
<script src="js/laydanhsach.js"></script>
</html>