<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


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
				<a class="navbar-brand" href="#">H.M.System</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Company <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="#">Main Company</a></li>
						<li><a href="#">Sub Company</a></li>
						<li><a href="#">Company Branches</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
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
		import="com.hms.dao.devicesDao, com.hms.bean.devices, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



	<%
		List<devices> list = devicesDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<nav nav class="navbar navbar-dark bg-primary">

		<a class="navbar-brand"><p>
				<font color="White"><b>Devices List &nbsp &nbsp &nbsp
						&nbsp</font>
			</p></a> &nbsp &nbsp
		<ul class="nav navbar-nav">
			<li><a href="AddDevices.jsp"><font color="#e4e683"><b>
							<u> Add a Device 
					</b></u></u></font></a></li>
		</ul>
		<form class="navbar-form navbar-right">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
	</nav>

	<div class="container-fluid">
		<div class="col-md-12">
			<table class="table table-striped">
				<thead class="thead-dark">
					<tr>
						<th>Device Id</th>
						<th>Device Name</th>
						<th>Device Serial Number</th>
						<th>Device Warranty Period</th>
						<th>Assign Date</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="d">
						<tr>
							<td>${d.getDevice_id()}</td>
							<td>${d.getD_name()}</td>
							<td>${d.getD_serial_number()}</td>
							<td>${d.getD_warranty_period()}</td>
							<td>${d.getAssign_date()}</td>
							<td><a href="EditDevices.jsp?id=${d.getDevice_id()}">Edit</a></td>
							<td><a
								href="deleteDevices_controller.jsp?id=${d.getDevice_id()}">Delete</a></td>
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


			Copyright © 2019 &nbsp; - &nbsp; All rights reserved. <br>
		</div>
	</footer>
</body>
</html>