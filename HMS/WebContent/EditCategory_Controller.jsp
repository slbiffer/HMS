<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.hms.dao.categoryDao"%>
	<jsp:useBean id="c" class="com.hms.bean.category"></jsp:useBean>
	<jsp:setProperty property="*" name="c" />
	<%
		int i = categoryDao.update(c);
		if (i > 0) {
			response.sendRedirect("EditCategory-success.jsp");
		} else {
			response.sendRedirect("EditCategory-error.jsp");
		}
	%>
</body>
</html>