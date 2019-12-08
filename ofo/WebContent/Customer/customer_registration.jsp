<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../Validation/registrationvalidation.js"></script>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Customer Registration</title>
</head>
<body onload='document.myForm.EmailId.focus()'>
<% String customeradd=(String)session.getAttribute("customeradd"); %>
<h1 class="jumbotron bg-info text-black" align="center">REGISTRATION</h1>
<div class="container">
	<form name="myForm" method="post" action="customer_add.jsp" style="width:500px;margin:auto;" onsubmit="return ValidateEmail(EmailId);" >
	
	<div class="form-group">
		<label>Customer Name</label>
		<input type="text" name="CustomerName" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Email ID</label>
		<input type="text" name="EmailId" class="form-control"  required>
	</div>
	
	<div class="form-group">
		<label>Mobile Number</label>
		<input type="text" name="MobileNo" class="form-control" pattern="[0-9]{10}" required>
	</div>
	
	<div class="form-group">
		<label>Address</label>
		<textarea name="Address" class="form-control" required></textarea>
	</div>
	
	<div class="form-group">
		<label>Gender</label>
		<input type="radio" name="Gender" value="Male" checked>Male
		<input type="radio" name="Gender" value="Female">Female
	</div>
	
	<div class="form-group">
		<label>Date Of Birth</label>
		<input type="date" name="DOB" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="login" class="form-control btn-outline-primary" id="submit">Register</button>
		<span class="label label-default" style="color:red;" id="spanid"><%= customeradd %></span>
		
		
	</div>
	</form>

</div>
</body>
</html>