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
		import="com.hms.dao.categoryDao, com.hms.bean.category, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		List<category> list = categoryDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<h1>Sub Company(Category) List</h1>

	

	<div class="container-fluid">
		<div class="col-md-12">
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>Category Id</th>
						<th>Category Name</th>
						<th>Category Address</th>
						<th>Category Telephone</th>
						<th>Category Authorized Person</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="c">
						<tr>
							<td>${c.getMainCid()}</td>
							<td>${c.getCname()}</td>
							<td>${c.getCAddr()}</td>
							<td>${c.getCtelephone()}</td>
							<td>${c.getCAuthorized_person()}</td>
							<td><a href="EditCategory.jsp?id=${c.getMainCid()}">Edit</a></td>
							<td><a href="deleteCategory_controller.jsp?id=${c.getMainCid()}">Delete</a></td>
						</tr>

					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>