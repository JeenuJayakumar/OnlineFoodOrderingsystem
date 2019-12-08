<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Enter Delivery Agent Details</title>
</head>
<body>
<div class="topnav">
  <a class="active" href="admin_home.jsp">Home</a>
  <a href="food_details_insert.jsp">Add Food Item</a>
  <a href="view_foods.jsp">View Food Items</a>
  <a href="enter_agent_details.jsp">Add Delivery Agent</a>
  <a href="view_orders.jsp">Pending Orders</a>
  <a href="all_orders.jsp">All Orders</a>
  <a href="../logout.jsp">Logout</a>
</div>
	<h1 class="jumbotron bg-danger text-dark" align="center">Add Delivery Agent</h1>
<div class="container">
	<form method="post" action="agent_add_process.jsp" style="width:500px;margin:auto;" onsubmit="return ValidateEmail('EmailId')" >
	
	<div class="form-group">
		<label>Agent ID</label>
		<input type="text" name="agent_id" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Agent Name</label>
		<input type="text" name="agent_name" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Email id</label>
		<input type="text" name="email" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Mobile</label>
		<input type="text" name="mobile" class="form-control" required>
	</div>
	
	
	
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="add agent" class="form-control btn-outline-primary" id="submit">Add Delivery Agent</button>
		<span class="label label-default" style="color:red;" id="spanid"></span>
		
		
	</div>
	</form>

</div>
	
</body>
</html>