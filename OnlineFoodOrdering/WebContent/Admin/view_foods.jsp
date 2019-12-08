<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.bl.*,java.util.*,ofo.dto.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>View All Food Items</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="admin_home.jsp">Home</a> <a
			href="food_details_insert.jsp">Add Food Item</a> <a
			href="view_foods.jsp">View Food Items</a><a
			href="enter_agent_details.jsp">Add Delivery Agent</a> <a
			href="view_orders.jsp">Pending Orders</a> <a href="all_orders.jsp">All
			Orders</a> <a href="../logout.jsp">Logout</a>
	</div>
	<h1 class="jumbotron bg-danger text-dark" align="center">Food Items</h1>
	<%
	if(session.getAttribute("user_name")==null)
	{
		response.sendRedirect("../login.jsp");
	}
		ArrayList<FoodDTO> foods = new ArrayList<FoodDTO>();
		foods = FoodBL.getFoods();
	%>
	<table class="table table-dark table-striped">
		<tr>
			<th style="text-align: center">Food ID</th>
			<th style="text-align: center">Item Name</th>
			<th style="text-align: center">Unit Price</th>
			<th style="text-align: center">Category</th>

		</tr>
		<%
			for (FoodDTO food : foods) {
		%>
		<tr>
			<td style="text-align: center"><%=food.getFood_id()%></td>
			<td style="text-align: center"><%=food.getItem_name()%></td>
			<td style="text-align: center"><%=food.getPrice()%></td>
			<td style="text-align: center"><%=food.getCategory()%></td>

		</tr>
		<%
			}
		%>
	</table>
</body>
</html>