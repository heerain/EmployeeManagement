<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<link rel="icon" type="image/png" href="loginResources/images/icons/favicon.ico"/>
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/fonts/iconic/css/material-design-iconic-font.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/animsition/css/animsition.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="loginResources/vendor/daterangepicker/daterangepicker.css">
	<link rel="stylesheet" type="text/css" href="loginResources/css/util.css">
	<link rel="stylesheet" type="text/css" href="loginResources/css/main.css">
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('loginResources/images/bg-01.jpg');">
			<div class="wrap-login100">
				<form class="login100-form validate-form" action="LoginServlet" method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-landscape"></i>
					</span>

					<span class="login100-form-title p-b-15 p-t-27">
						Log in
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<input class="input100" type="password" name="pass" placeholder="Password">
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

					<div class="container-login100-form-btn p-b-15">
						<input type="radio" name="etype" value="manager" > Manager
		    			<input type="radio" name="etype" value="worker"> Worker
					</div>
					
					<div class="container-login100-form-btn">
						<input type="submit" class="login100-form-btn" value="Login" style="bgcolor:#000000">
					</div>

					<div class="text-center p-t-30">
						<a class="txt1" href="#">
							Forgot Password?
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	<script src="loginResources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="loginResources/vendor/animsition/js/animsition.min.js"></script>
	<script src="loginResources/vendor/bootstrap/js/popper.js"></script>
	<script src="loginResources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="loginResources/vendor/select2/select2.min.js"></script>
	<script src="loginResources/vendor/daterangepicker/moment.min.js"></script>
	<script src="loginResources/vendor/daterangepicker/daterangepicker.js"></script>
	<script src="loginResources/vendor/countdowntime/countdowntime.js"></script>
	<script src="loginResources/js/main.js"></script>

</body>
</html>