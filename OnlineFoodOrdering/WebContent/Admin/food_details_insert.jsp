<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Food Details Insert</title>
</head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
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
<h1 class="jumbotron bg-danger text-dark" align="center">Add Food Item</h1>
<div class="container">
	<form method="post" action="food_add_process.jsp" style="width:500px;margin:auto;" onsubmit="return ValidateEmail('EmailId')" >
	
	<div class="form-group">
		<label>Food ID</label>
		<input type="text" name="food_id" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Item Name</label>
		<input type="text" name="item_name" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Unit Price</label>
		<input type="text" name="price" class="form-control" required>
	</div>
	
	<div class="form-group">
		<label>Category</label>
		<select name="category" class="form-control">
			<option value="veg">Vegetarian</option>
			<option value="nonveg">Non-Vegetarian</option>
		</select>
	</div>
	
	
	<div class="form-group">
		<label></label>
		<button type="submit" name="login" class="form-control btn-outline-primary" id="submit">Add Food</button>
		<span class="label label-default" style="color:red;" id="spanid"></span>
		
		
	</div>
	</form>

</div>
</body>
</html>