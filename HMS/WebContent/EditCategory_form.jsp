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
	<%@page import="com.hms.dao.categoryDao, com.hms.bean.category"%>

	<%
		String id = request.getParameter("id");
		category c = categoryDao.getRecordById(id);
	%>

	<form class="form-horizontal" role="form" style="color: #010101"
		id="Edit_Main_Types" method="post" action="EditCategory_Controller.jsp">
		<h2>Edit a Category</h2>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="main_category_id"
				class="col-md-4 col-form-label">Main Category Id</label>
			<div class="col-md-7">
				<input type="text" class="form-control" id="mainCid"
					name="mainCid" value="<%=c.getMainCid()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="cname"
				class="col-md-4 col-form-label">Category Name</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="cname"
					name="cname" value="<%=c.getCname()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="CAddr"
				class="col-md-4 col-form-label">Category Address</label>
			<div class="col-md-7">
				<input type="text" class="form-control" id="CAddr"
					name="CAddr" value="<%=c.getCAddr()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="ctelephone"
				class="col-md-4 col-form-label">Category Telephone</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="ctelephone"
					name="ctelephone" value="<%=c.getCtelephone()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="main_company_addr"
				class="col-md-4 col-form-label">Category Authorized Person</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="CAuthorized_person"
					name="CAuthorized_person" value="<%=c.getCAuthorized_person()%>">
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

</body>
</html>