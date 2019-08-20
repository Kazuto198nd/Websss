<!--  -->
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="glyphicons-halflings-regular.woff2">
	<link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
	<link rel="stylesheet" href="css/style.css">
    <script type="text/javascript" src="style/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="style/bootstrap.min.js"></script>
	<script src='js/login.js'> </script>
</head>
<body align='center'>
	<div>
	<div class="login">
	<!-- <img src="img/login.jpg" alt=""style="width: 100%;height:643px;"> -->
		<h1 style="margin-top:100px;font-size: 100px;margin-right: 10px">Đăng Nhập</h1>
     <div class="form" style="border: 2px solid blue;margin: 100px 400px 200px 400px;background-color: rgb(61, 98, 180);color:#dddddd;">
		<label style="font-size: 30px;margin-right: 10px;"><br>Tài Khoản</label>
		<input placeholder="Tên Đăng Nhập" name="username" type="text" id='username' required>
		<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
		<br>
		<label style="font-size: 30px;margin-right: 23px;"><br>Mật Khẩu</label>
		<input  placeholder="Mật Khẩu" name="password" type="password" id='password'>
		<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
		<div style="margin-top: 10px;">
		<span ><input type="checkbox" />Remember Me</span>
		<a href="#" style="color: yellow ; margin-left: 20px">Forgot Password?</a>
		<div class="clear"></div>
		</div>
		<input type="submit" name="login" id="btnLogin" value="Login">
		<input type="submit" name='trangchu' id="btnTrangChu" value="Thoát">
		
	</div>
</div>
</div>
	
</body>
</html>