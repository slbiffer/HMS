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
	<%@page import="com.hms.dao.devicesDao, com.hms.bean.devices"%>

	<%
		String id = request.getParameter("id");
		devices d = devicesDao.getRecordById(id);
	%>

	<form class="form-horizontal" role="form" style="color: #010101"
		id="Edit_Main_Types" method="post" action="EditDevices_controller.jsp">
		<h2>Edit a Device</h2>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="device_id"
				class="col-md-4 col-form-label">Device Id</label>
			<div class="col-md-7">
				<input type="text" class="form-control" id="device_id"
					name="device_id" value="<%=d.getDevice_id()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="d_name"
				class="col-md-4 col-form-label">Device Name</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="d_name"
					name="d_name" value="<%=d.getD_name()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="d_serial_number"
				class="col-md-4 col-form-label">Device Serial Number</label>
			<div class="col-md-7">
				<input type="text" class="form-control" id="d_serial_number"
					name="d_serial_number" value="<%=d.getD_serial_number()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="d_warranty_period"
				class="col-md-4 col-form-label">Device Warranty Period</label>
			<div class="col-sm-7">
				<input type="text" class="form-control" id="d_warranty_period"
					name="d_warranty_period" value="<%=d.getD_warranty_period()%>">
			</div>
		</div>
		<div class="form-group row">
			&nbsp &nbsp &nbsp &nbsp <label for="assign_date"
				class="col-md-4 col-form-label">Assign Date</label>
			<div class="col-sm-7">
				<input type="date" class="form-control" id="assign_date"
					name="assign_date" value="<%=d.getAssign_date()%>">
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