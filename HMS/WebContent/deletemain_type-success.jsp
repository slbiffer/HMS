<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function alertName() {
		alert("Record successfully Deleted!");
		window.location.href = "viewmain_type.jsp";
	}
</script>
</head>
<body>
	<script type="text/javascript">
		window.onload = alertName;
	</script>

	<jsp:include page="viewmain_type.jsp"></jsp:include>
</body>
</html>