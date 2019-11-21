<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@page import="com.hms.dao.branchesDao" %>
<jsp:useBean id="b" class="com.hms.bean.branches"></jsp:useBean>
<jsp:setProperty property="*" name="b"/>
</head>
<body>
<%
int i=branchesDao.save(b);
if(i>0){
	response.sendRedirect("AddBranches.jsp");
}else{
	response.sendRedirect("addmain_type-error.jsp");
}


%>

</body>
</html>