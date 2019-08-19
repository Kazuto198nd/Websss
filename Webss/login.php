<!--  -->
<!DOCTYPE html>
<html>
<head>
	<title>login</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="glyphicons-halflings-regular.woff2">
    <link rel="stylesheet" type="text/css" href="style/bootstrap.min.css">
    <script type="text/javascript" src="style/jquery-3.3.1.js"></script>
    <script type="text/javascript" src="style/bootstrap.min.js"></script>
	<script src='js/login.js'> </script>
</head>
<body align='center'>
	<div>
	<div class="login">
		<h1 >Đăng Nhập</h1>
     <div class="form">

		<label style="font-size: 30px;margin-right: 10px;">Tài KHoản</label>
		<input placeholder="Tên Đăng Nhập" name="username" type="text" id='username' required>
		<span class="icon1"><i class="fa fa-user" aria-hidden="true"></i></span>
		<br>
		<label style="font-size: 30px;margin-right: 23px;">Mật Khẩu</label>
		<input  placeholder="Mật Khẩu" name="password" type="password" id='password'>
		<span class="icon2"><i class="fa fa-unlock" aria-hidden="true"></i></span>
		<div style="margin-top: 10px;">
		<span ><input type="checkbox" />Remember Me</span>
		<a href="#" style="color: red ; margin-left: 20px">Forgot Password?</a>
		<div class="clear"></div>
		</div>
		 <input type="submit" name="login" id="btnLogin" value="Login">

		
	</div>
</div>
</div>
	
</body>
</html>