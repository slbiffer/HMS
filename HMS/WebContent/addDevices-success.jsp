<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main Companies | Hardware Management System</title>
<script type="text/javascript">
	function alertName() {
		alert("Successfuly Add New Device");
		 window.location.href = "AddDevices.jsp";
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body style="background-color: #E9ECEF">
	<script type="text/javascript">
		window.onload = alertName;
	</script>
			<jsp:include page="ViewDevices.jsp"></jsp:include>
</body>
</html>