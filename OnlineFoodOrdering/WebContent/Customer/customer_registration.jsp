<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.utilities.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../Validation/registrationvalidation.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body onload='document.myForm.EmailId.focus()'>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<% String customeradd=(String)session.getAttribute("customeradd");
String customer_id=AutoIdGenerator.generateId();
session.setAttribute("customerid",customer_id);
%>
<h1 class="jumbotron bg-info text-black" align="center">REGISTRATION</h1>
<div class="container">
	<form:form method="post" action="addCustomer">
	
	<div class="form-group">
		<label>Customer Id</label>
		<form:input path="customerId" class="form-control" value='<%=customer_id %>'></form:input>
	</div>
	
	<div class="form-group">
		<label>Customer Name</label>
		<form:input path="customerName" class="form-control" ></form:input>
	</div>
	
	<div class="form-group">
		<label>Email ID</label>
		<form:input path="email" class="form-control" ></form:input>
	</div>
	
	<div class="form-group">
		<label>Mobile Number</label>
		<form:input type="text" path="mobile" class="form-control" pattern="[0-9]{10}"></form:input>
	</div>
	
	<div class="form-group">
		<label>Address</label>
		<form:textarea path="address" class="form-control"></form:textarea>
	</div>
	
	<div class="form-group">
		<label>Gender</label>
		<form:radiobutton path="gender" value="Male" />Male
		<form:radiobutton path="gender" value="Female" />Female
	</div>
	
	<div class="form-group">
		<label>Date Of Birth</label>
		<form:input type="date" path="dateOfBirth" class="form-control"></form:input>
	</div>
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="login" class="form-control btn-outline-primary" id="submit">Register</button>
		<span class="label label-default" style="color:red;" id="spanid"><%= customeradd %></span>
		
		
	</div>
	</form:form>

</div>
</body>
</html>