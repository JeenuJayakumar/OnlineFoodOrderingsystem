<%@page import="javafx.scene.control.Alert"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Admin Home</title>
</head>
<body>
<%! String addfood; %>
<% 
		if(session.getAttribute("user_name")==null)
		{
			response.sendRedirect("../login.jsp");
		}

addfood = (String)session.getAttribute("addfood"); %>
<div class="topnav">
  <a class="active" href="admin_home.jsp">Home</a>
  <a href="food_details_insert.jsp">Add Food Item</a>
  <a href="view_foods.jsp">View Food Items</a>
  <a href="enter_agent_details.jsp">Add Delivery Agent</a>
  <a href="view_orders.jsp">Pending Orders</a>
  <a href="all_orders.jsp">All Orders</a>
  <a href="../logout.jsp">Logout</a>
</div>
<div>
<h4 style="color:red;"><%= addfood %></h4>

</div>



</body>
</html>