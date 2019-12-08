<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>logout process</title>
</head>
<body>
<%
	
	session.setAttribute("user_name",null);
	session.setAttribute("user_id",null);
	session.setAttribute("success", null);
	session.setAttribute("customerid",null);
	session.setAttribute("customeradd",null);
	session.setAttribute("purchase", null);
	session.setAttribute("remove",null);
	response.sendRedirect("Templates/customer/firstpage.jsp");

%>
</body>
</html>