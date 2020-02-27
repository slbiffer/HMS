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
		import="com.hms.dao.main_typesDao"%>
	<%@page
		import="com.hms.bean.main_types, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Company List</h1>

	<%
		List<main_types> list = main_typesDao.getAllRecords();
		request.setAttribute("list", list);
	%>

	<div class="container-fluid">
		<div class="col-md-12">
			<table class="table table-condensed">
				<thead>
					<tr>
						<th>Company Id</th>
						<th>Company Name</th>
						<th>Company Address</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="u">
						<tr>
							<td>${u.getmainId()}</td>
							<td>${u.getmainName()}</td>
							<td>${u.getmainAddr()}</td>
							<td><a href="EditMain.jsp?id=${u.getmainId()}">Edit</a></td>
							<td><a href="deleteMain_typeController.jsp?id=${u.getmainId()}">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>