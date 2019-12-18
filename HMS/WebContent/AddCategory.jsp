<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | Hardware Management System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #E9ECEF">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">H.M.System
					&nbsp;&nbsp;&nbsp;&nbsp;</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="index.jsp">Home</a></li>
				<li><a href="#">Employee</a></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="viewmain_type.jsp">Main Company <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="viewmain_type.jsp">View Main Company</a></li>
						<li><a href="AddMain.jsp">Add Main Company</a></li>
					</ul></li>

				<li class="active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="ViewCategory.jsp">Sub Company <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory.jsp">View Sub Company</a></li>
						<li class="active"><a href="AddCategory.jsp">Add Sub
								Company</a></li>
					</ul></li>

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="ViewBranches.jsp">Company Branches<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewBranches.jsp">View Company Branches</a></li>
						<li><a href="AddBranches.jsp">Add Company Branches</a></li>
					</ul></li>


				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="ViewDevices.jsp">Devices<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewDevices.jsp">View Devices</a></li>
						<li><a href="AddDevices.jsp">Add Devices</a></li>
					</ul></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
			<form class="navbar-form navbar-right" action="/action_page.php">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>


		</div>
	</nav>

	<div class="container-fluid">
		<div class="raw">

			<div class="col-md-5">
				<form class="form-horizontal" role="form" style="color: #010101"
					id="AddCategory" method="post" action="AddCategory_Controller.jsp">
					<h2>Add a Sub Company</h2>

					<!-- 		<div class="form-group row"> -->
					<!-- 			&nbsp &nbsp &nbsp &nbsp <label for="branch_id" -->
					<!-- 				class="col-md-4 col-form-label">Branch Id</label> -->
					<!-- 			<div class="col-md-7"> -->
					<!-- 				<input type="text" class="form-control" id="branch_id" -->
					<!-- 					name="branch_id" placeholder="Branch Id"> -->
					<!-- 			</div> -->
					<!-- 		</div> -->
					<!-- 		<div class="form-group row"> -->
					<!-- 			&nbsp &nbsp &nbsp &nbsp <label for="main_c_fk_id" -->
					<!-- 				class="col-md-4 col-form-label">Main Category Id</label> -->
					<!-- 			<div class="col-md-7"> -->
					<!-- 				<input type="text" class="form-control" id="main_c_fk_id" -->
					<!-- 					name="main_c_fk_id" placeholder="Main Category Id"> -->
					<!-- 			</div> -->
					<!-- 		</div> -->


					<div class="form-group row">
						&nbsp &nbsp &nbsp &nbsp <label for="Cname"
							class="col-md-4 col-form-label">Sub Company Name</label>
						<div class="col-md-7">
							<input type="text" class="form-control" id="cname" name="cname"
								placeholder="Category Name">
						</div>
					</div>
					<div class="form-group row">
						&nbsp &nbsp &nbsp &nbsp <label for="CAddr"
							class="col-md-4 col-form-label">Sub Company Address</label>
						<div class="col-md-7">
							<input type="text" class="form-control" id="CAddr" name="CAddr"
								placeholder="Category Address">
						</div>
					</div>
					<div class="form-group row">
						&nbsp &nbsp &nbsp &nbsp <label for="Ctelephone"
							class="col-md-4 col-form-label">Sub Company Telephone</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="ctelephone"
								name="ctelephone" placeholder="Category Telephone">
						</div>
					</div>
					<div class="form-group row">
						&nbsp &nbsp &nbsp &nbsp <label for="CAuthorized_person"
							class="col-md-4 col-form-label">Sub Company Authorized
							Person</label>
						<div class="col-sm-7">
							<input type="text" class="form-control" id="CAuthorized_person"
								name="CAuthorized_person" placeholder="Authorized Person">
						</div>
					</div>

					<div class="form-group">
						&nbsp &nbsp &nbsp &nbsp &nbsp
						<button type="reset" class="btn btn-secondary">Cancel</button>
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
						<button type="submit" class="btn btn-success btn-md">
							<b>Submit</b>
						</button>
					</div>
				</form>
			</div>
			<div class="col-md-7">
				<img class="img-fluid" src="pix/web.png" width="700px" align="left">
			</div>
		</div>
	</div>



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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
		<div class="container text-center text-md-left mt-2">

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
	</div>
</body>
</html>