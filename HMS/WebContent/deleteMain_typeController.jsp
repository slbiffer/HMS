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
String Id = request.getParameter("id");
int id=Integer.parseInt(Id);

int i=main_typesDao.delete(id);
if(i>0){
response.sendRedirect("deletemain_type-success.jsp");
}else{
response.sendRedirect("addmain_type-error.jsp");
}
%>

</body>
</html>