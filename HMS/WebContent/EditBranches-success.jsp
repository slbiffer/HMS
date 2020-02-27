<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function alertName() {
		alert("Successfuly Updated");
		 window.location.href = "ViewBranches.jsp";
	}
</script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<script type="text/javascript">
		window.onload = alertName;
	</script>
	<jsp:include page="ViewBranches.jsp"></jsp:include>
</body>
</html>
</html>