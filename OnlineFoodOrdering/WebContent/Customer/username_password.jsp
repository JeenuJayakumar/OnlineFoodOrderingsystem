<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Set Username and Password</title>
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%! String success,customerid; %>
<% success = (String)session.getAttribute("success"); 
	customerid = (String)session.getAttribute("customerid");
%>

<h1 class="jumbotron bg-success text-white" align="center">SET USERNAME AND PASSWORD</h1>

<div class="container">
	
	<form:form method="post" action="name_pass_add_process.jsp" style="width:500px;margin:auto;">
	
	<div class="form-group">
		<label>CustomerID</label>
		<form:input path="id" class="form-control" value='<%=customerid%>'></form:input>
	</div>
	
	<div class="form-group">
		<label>Create Username</label>
		<form:input path="username" class="form-control" required></form:input>
	</div>
	
	<div class="form-group">
		<label>Create Password</label>
		<form:input path="password" class="form-control" required></form:input>
	</div>
	
	<div class="form-group">
		<label>Confirm Password</label>
		<form:input path="cpass" class="form-control" required></form:input>
	</div>
	
	<div class="form-group">
		<label></label>
		<form:button type="submit" name="submit" class="form-control btn-outline-primary" >Submit</form:button>
		<span style="color:red;"><%= success %></span>
	</div>
	</form:form>
</div>

	

</body>
</html>