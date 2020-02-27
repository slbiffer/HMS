<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@page import="com.hms.dao.employeDao" %>
<jsp:useBean id="e" class="com.hms.bean.Employes"></jsp:useBean>
<jsp:setProperty property="*" name="e"/>
</head>
<body>
<%
int i=employeDao.save(e);
if(i>0){
	response.sendRedirect("index.jsp");
}else{
	response.sendRedirect("addmain_type-error.jsp");
}


%>

</body>
</html>