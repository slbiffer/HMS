<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branches | HMS System</title>
<link rel="shortcut icon" href="pix/btch.ico" />

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
				<a class="navbar-brand" href="index.jsp">H.M.System
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

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="ViewCategory.jsp">Sub Company <span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="ViewCategory.jsp">View Sub Company</a></li>
						<li><a href="AddCategory.jsp">Add Sub Company</a></li>
					</ul></li>

				<li class="active"><a class="dropdown-toggle"
					data-toggle="dropdown" href="ViewBranches.jsp">Company Branches<span
						class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="ViewBranches.jsp">View Company Branches</a></li>
						<li ><a href="AddBranches.jsp">Add Company
								Branches</a></li>
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

	<%@page
		import="com.hms.dao.branchesDao, com.hms.bean.branches, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<nav nav class="navbar navbar-dark bg-primary">

		<a class="navbar-brand"><p>
				<font color="White"><b>Branches List &nbsp &nbsp &nbsp
						&nbsp</font>
			</p></a> &nbsp &nbsp
		<ul class="nav navbar-nav">
			<li><a href="AddBranches.jsp"><font color="#e4e683"><b>
							<u> Add a Branch 
					</b></u></u></font></a></li>
		</ul>
		<form class="navbar-form navbar-right">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>

	<%
		List<branches> list = branchesDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<div class="container-fluid">
		<div class="col-md-12">
			<table class="table table-striped">
				<thead class="thead-dark">
					<tr>
						<th>Branch Id</th>
						<th>Branch Name</th>
						<th>Branch Address</th>
						<th>Branch Telephone</th>
						<th>Branch Authorized Person</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="b">
						<tr>
							<td>${b.getBranch_id()}</td>
							<td>${b.getB_name()}</td>
							<td>${b.getB_address()}</td>
							<td>${b.getB_telephone()}</td>
							<td>${b.getB_authorized_person()}</td>
							<td><a href="EditBranches.jsp?id=${b.getBranch_id()}"><input
									type="submit" class="btn btn-success" value="Edit"
									class="select"></a></td>
							<td><a
								href="deleteBranches_controller.jsp?id=${b.getBranch_id()}"><input
									type="submit" class="btn btn-danger" value="Delete"
									class="select"></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
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


			Copyright Â© 2019 &nbsp; - &nbsp; All rights reserved. <br>
		</div>
	</footer>
</body>
</html>