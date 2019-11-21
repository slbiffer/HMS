<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%@page import="com.hms.dao.main_typesDao"%>
	<jsp:useBean id="u" class="com.hms.bean.main_types"></jsp:useBean>
	<jsp:setProperty property="*" name="u" />
	<%
		int i = main_typesDao.update(u);
		if (i > 0) {
			response.sendRedirect("editmain_type-success.jsp");
		} else {
			response.sendRedirect("editmain_type-error.jsp");
		}
	%>


</body>
</html>