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
String Id = request.getParameter("id");
int id=Integer.parseInt(Id);

int i=branchesDao.delete(id);
System.out.println("s  "+id);
System.out.println("id "+b.getBranch_id());
if(i>0){
	response.sendRedirect("deleteBranches-success.jsp");
}else{
	response.sendRedirect("addmain_type-error.jsp");
}


%>

</body>
</html>