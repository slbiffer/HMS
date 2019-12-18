<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register | Hardware Management System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
	integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<script type="text/javascript"
	src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>


</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar navbar-expand-xl bg-dark navbar-dark sticky-top"
		style="border-bottom: 1px; border-color: white;">
		<a class="navbar-brand" href="index.jsp"> <img src="pix/logo.png"
			width="35" height="35" class="d-inline-block align-top" alt="">
			| <span>H.M.System</span>
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home &nbsp;</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Employee
						&nbsp;</a></li>
				<li class="nav-item"><a class="nav-link"
					href="viewmain_type.jsp">Main Company &nbsp;</a></li>

				<!-- Drop down menu -->
				<li class="nav-item"><a class="nav-link"
					href="ViewCategory.jsp">Sub Company &nbsp;</a></li>
				<li class="nav-item"><a class="nav-link"
					href="ViewBranches.jsp">Company Branches &nbsp;</a></li>
				<li class="nav-item"><a class="nav-link" href="ViewDevices.jsp">Devices
						&nbsp; </a></li>
				<li class="nav-item">
					<form class="form-inline mr-auto">
						<input class="form-control" type="text" placeholder="Search"
							aria-label="Search"> <i
							class="fas fa-search text-white ml-2" aria-hidden="true"></i>
					</form>
				</li>
				<li class="nav-item">&nbsp; &nbsp;<a class="btn btn-primary"
					href="Login.jsp"> Log in </a>&nbsp; &nbsp;
				</li>
				<li class="nav-item"><a class="btn btn-primary"
					href="Register.jsp"> Register </a></li>
			</ul>
		</div>

	</nav>
	<div class="main">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
				<li class="breadcrumb-item active" aria-current="page">Register</li>
			</ol>
		</nav>
		<div class="wrapper register">
			<div class="row">
				<div class="col-5" style="padding-left: 110px;">

					<h1 class="display-4">Register</h1>
					<form id="register" action="register_controller.jsp" method="POST">
						<div class="form-row">
							<div class="col">
								<label for="inputEmail4">Name</label>
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="text" class="form-control" name="emp_fname"
									placeholder="First name">
							</div>
							<div class="form-group col-md-6">
								<input type="text" class="form-control" name="emp_lname"
									placeholder="Last name">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputEmail4">Email</label> <input type="email"
									class="form-control" name="emp_email">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputPassword4">Password</label> <input
									type="password" class="form-control" id="emp_password"
									placeholder="Password" name="emp_password">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<input type="password" class="form-control" id="repass"
									placeholder="Confirm Password" name="repass">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputEmail4">Address</label> <input type="text"
									class="form-control" name="emp_address">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputAddress">Position</label> <input type="text"
									class="form-control" id="emp_position_title"
									placeholder="johndoe@example.com" name="emp_position_title">
							</div>
						</div>
						<div class="form-row">
							<div class="form-group col-md-12">
								<label for="inputAddress">Phone Number</label> <input type="text"
									class="form-control" id="emp_telephone" name="emp_telephone"
									placeholder="0777123456">
							</div>
						</div>
						<br>
						<div class="form-row">
							<div class="form-group col-md-6">
								<input type="submit" class="btn btn-primary btn-block"
									value="Sign in">
							</div>
							<div class="form-group col-md-6">
								<input type="reset" value="Reset"
									class="btn btn-primary btn-block">
							</div>
							<br>
							<p>
								Already Registered? &nbsp;<a href="Login.jsp">Log in</a>
							</p>
							<br> <br> <br>
						</div>
					</form>
				</div>
				<div class="col-6">
					<!-- Advances settings button -->
					<br> <img class="img-fluid" src="pix/aaaaa1.jpg" width="500px"
						align="right">
				</div>
			</div>
		</div>
	</div>
	<footer class="page-footer font-small unique-color-dark"
		style="background-color: #555;">
		<div style="background-color: #f0ad4e;">
			<div class="container">
				<div class="row py-3 d-flex align-items-center">
					<div
						class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
						<h6 class="mb-0">Get Connected with Us on Social Networks!</h6>
					</div>
					<div class="col-md-6 col-lg-7 text-center text-md-right">
						<!-- Facebook -->
						<a class="fb-ic"> <i class="fab fa-facebook-f white-text mr-4">
						</i>
						</a>
						<!-- Twitter -->
						<a class="tw-ic"> <i class="fab fa-twitter white-text mr-4">
						</i>
						</a>
						<!-- Google +-->
						<a class="gplus-ic"> <i
							class="fab fa-google-plus-g white-text mr-4"> </i>
						</a>
						<!--Linkedin -->
						<a class="li-ic"> <i
							class="fab fa-linkedin-in white-text mr-4"> </i>
						</a>
						<!--Instagram-->
						<a class="ins-ic"> <i class="fab fa-instagram white-text">
						</i>
						</a>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer Links -->
		<div class="container text-center">

			<!-- Grid row -->
			<div class="row mt-3 ">
				<!-- Grid column -->
				<div class="col-md-12" style="color: white">

					<!-- Links -->
					<h6 class="text-uppercase font-weight-bold"
						style="letter-spacing: 3px;">Contact</h6>
					<hr class="deep-purple accent-2 mb-4 mt-2 d-inline-block mx-auto"
						style="width: 60px; border-color: #777;">
					<p style="color: #eee;">
						<i class="fas fa-home mr-3"></i> Torn Ave,Colombo 7,Sri Lanka
					</p>
					<p style="color: #eee;">
						<i class="fas fa-envelope mr-3"></i> info@HMS.lk
					</p>
					<p style="color: #eee;">
						<i class="fas fa-phone mr-3"></i> + 01 123 456 78
					</p>
					<p style="color: #eee;">
						<i class="fas fa-print mr-3"></i> + 01 123 456 78
					</p>

				</div>
			</div>
		</div>

		<!-- Copyright -->
		<div class="footer-copyright text-center py-0.5"
			style="color: #eee; background-color: #333;">
			<!-- 			<a href="index.jsp" style="color: #eee; text-decoration: none;">
				<img src="#" width="120px" height="10px">
			</a> -->


			Copyright © 2019 &nbsp; - &nbsp; All rights reserved. <br>
		</div>
	</footer>
</body>
</html>