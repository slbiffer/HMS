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
	<%@page import="com.hms.dao.main_typesDao, com.hms.bean.main_types"%>

	<%
		String id = request.getParameter("id");
		main_types u = main_typesDao.getRecordById(id);
	%>

	<form class="form-horizontal" role="form" style="color: #010101"
		id="Edit_Main_Types" method="post" action="editmain_type.jsp">
		<h2>Edit a Main Company</h2>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="main_company_id"
				class="col-md-4 col-form-label">Main Company Id</label>
			<div class="col-md-7">
				<input type="text" class="form-control" id="main_company_id"
					name="mainId" value="<%=u.getmainId()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="main_company_name"
				class="col-md-4 col-form-label">Company Name</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="main_company_name"
					name="mainName" value="<%=u.getmainName()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="main_company_addr"
				class="col-md-4 col-form-label">Company Address</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="main_company_addr"
					name="mainAddr" value="<%=u.getmainAddr()%>">
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