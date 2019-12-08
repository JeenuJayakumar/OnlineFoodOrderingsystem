<%@page import="ofo.bl.CustomerBL"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.utilities.*,ofo.dl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Set Username and Password</title>
</head>
<body>
<%! String success,customerid; %>
<% success = (String)session.getAttribute("success"); 
	customerid = CustomerDL.IdRetriever(); 
	//String customer_id = request.getParameter("customer_id"); 
	//String customer_id=AutoIdGenerator.generateId();
%>

<h1 class="jumbotron bg-success text-white" align="center">SET USERNAME AND PASSWORD</h1>

<div class="container">
	
	<form method="post" action="name_pass_add_process.jsp" style="width:500px;margin:auto;">
	
	<div class="form-group">
		<label>CustomerID</label>
		<input type="text" name="cust_id" class="form-control" value='<%=customerid%>'>
	</div>
	
	<div class="form-group">
		<label>Create Username</label>
		<input type="text" name="uname" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Create Password</label>
		<input type="password" name="pass" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Confirm Password</label>
		<input type="text" name="cpass" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="submit" class="form-control btn-outline-primary" >Submit</button>
		<span style="color:red;"><%= success %></span>
	</div>
	</form>
</div>

	

</body>
</html>