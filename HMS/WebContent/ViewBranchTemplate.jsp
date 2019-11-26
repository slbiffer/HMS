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
		import="com.hms.dao.branchesDao, com.hms.bean.branches, java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<h1>Branches List</h1>

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
							<td><a href="deleteBranches_controller.jsp?id=${b.getBranch_id()}"><input
									type="submit" class="btn btn-danger" value="Delete"
									class="select"></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>