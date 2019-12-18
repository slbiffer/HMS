<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@page import="com.hms.dao.devicesDao"%>
<jsp:useBean id="d" class="com.hms.bean.devices"></jsp:useBean>
<jsp:setProperty property="*" name="d"/>

</head>
<body>
<%
int i=devicesDao.save(d);
if(i>0){
response.sendRedirect("addDevices-success.jsp");
}else{
response.sendRedirect("addDevices-error.jsp");
}
%>
</body>
</html>