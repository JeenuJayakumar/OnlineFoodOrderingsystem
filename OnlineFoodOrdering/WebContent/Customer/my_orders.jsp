<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.dto.*,ofo.bl.*,java.util.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>My Orders</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="customer_home.jsp">Home</a> <a
			href="cart_view.jsp">View Cart</a> <a href="my_orders.jsp">My
			Orders</a> <a href="../logout.jsp">Logout</a>
	</div>

	<%!ArrayList<OrderDetailsDTO> orders;
	String customer_id, customerid;%>
	<%
		customerid = (String) session.getAttribute("userid");
		customer_id = "'" + customerid + "'";
		orders = new ArrayList<OrderDetailsDTO>();
		orders = OrderBL.getOrderDetails(customer_id);
	%>
	<table class="table table-dark table-striped table-hover">
		<tr>
			<th style="text-align: center">Order ID</th>
			<th style="text-align: center">Customer ID</th>
			<th style="text-align: center">Food ID</th>
			<th style="text-align: center">Quantity</th>
			<th style="text-align: center">Price</th>

		</tr>
		<%
			for (OrderDetailsDTO order : orders) {
		%>
		<tr>
			<td style="text-align: center"><%=order.getOrder_id()%></td>
			<td style="text-align: center"><%=order.getCustomer_id()%></td>
			<td style="text-align: center"><%=order.getFood_id()%></td>
			<td style="text-align: center"><%=order.getQuantity()%></td>
			<td style="text-align: center"><%=order.getPrice()%></td>

		</tr>
		<%
			}
		%>

	</table>


</body>
</html>