<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.hms.dao.devicesDao"%>
	<jsp:useBean id="d" class="com.hms.bean.devices"></jsp:useBean>
	<jsp:setProperty property="*" name="d" />
	<%
		int i = devicesDao.update(d);
		if (i > 0) {
			response.sendRedirect("AddDevices.jsp");
		} else {
			response.sendRedirect("editmain_type-error.jsp");
		}
	%>
</body>
</html>