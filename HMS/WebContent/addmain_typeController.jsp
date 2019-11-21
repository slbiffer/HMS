<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<%@page import="com.hms.dao.main_typesDao"%>
<jsp:useBean id="u" class="com.hms.bean.main_types"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<title>Insert title here</title>
</head>
<body>

<%
int i=main_typesDao.save(u);
if(i>0){
response.sendRedirect("addmain_type-success.jsp");
}else{
response.sendRedirect("addmain_type-error.jsp");
}
%>

</body>
</html>