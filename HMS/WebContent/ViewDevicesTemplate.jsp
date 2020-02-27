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
<body>

	<%@page
		import="com.hms.dao.devicesDao, com.hms.bean.devices, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<%
		List<devices> list = devicesDao.getAllRecords();
		request.setAttribute("list", list);
	%>


	<h1>Sub Company(Category) List</h1>



	<div class="container-fluid">
		<div class="col-md-12">
			<table class="table table-condensed">
				<thead>
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
</body>
</html>