<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<%@page import="com.hms.dao.categoryDao"%>
<jsp:useBean id="c" class="com.hms.bean.category"></jsp:useBean>
<jsp:setProperty property="*" name="c"/>

</head>
<body>
<%
String Id = request.getParameter("id");
int id=Integer.parseInt(Id);

int i=categoryDao.delete(id);
if(i>0){
response.sendRedirect("AddCategory.jsp");
}else{
response.sendRedirect("addmain_type-error.jsp");
}
%>
</body>
</html>