<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.bl.*,java.util.*,ofo.dto.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Pending Orders</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="pending_orders.jsp">View Orders</a> <a
			href="completed_orders.jsp">Completed Orders</a> <a
			href="../logout.jsp">Logout</a>
	</div>
	<%!
	ArrayList<PurchaseOrderDTO> orders;
	ArrayList<PurchaseOrderDTO> todeliverOrders;
	ArrayList<PurchaseOrderDTO> deliveredOrders;
	%>
	<%
	
	if(session.getAttribute("user_name")==null)
	{
		response.sendRedirect("../login.jsp");
	}
	orders = new ArrayList<PurchaseOrderDTO>();
	todeliverOrders = new ArrayList<PurchaseOrderDTO>();
	deliveredOrders = new ArrayList<PurchaseOrderDTO>();
		orders = OrderBL.getPurchaseOrders();
		for (PurchaseOrderDTO order : orders) {
			if (order.getOrder_status().equals("APPROVED")) {

				todeliverOrders.add(order);

			} else if(order.getOrder_status().equals("DELIVERED")) {
				deliveredOrders.add(order);
			}
		}
		
		session.setAttribute("todeliverorders", todeliverOrders);
		session.setAttribute("completedorders", deliveredOrders);
		
%>
<table class="table table-dark table-striped">
		<tr>
			<th style="text-align: center">Order ID</th>
			<th style="text-align: center">Customer ID</th>
			<th style="text-align: center">Total Price</th>
			<th style="text-align: center">Order Date</th>
			<th style="text-align: center">Order Status</th>
			<th style="text-align: center">Update Status</th>

		</tr>
		<%
			for (PurchaseOrderDTO order : todeliverOrders) {
		%>
		<tr>
			<td style="text-align: center"><%=order.getOrder_id()%></td>
			<td style="text-align: center"><%=order.getCustomer_id()%></td>
			<td style="text-align: center"><%=order.getTotal_price()%></td>
			<td style="text-align: center"><%=order.getOrder_date()%></td>
			<td style="text-align: center;"><%=order.getOrder_status()%></td>
			<td style="text-align: center;"><a href="deliver_order.jsp?orderid=<%=order.getOrder_id()%>">Delivered</a></td>

		</tr>
		<%
			}
		%>

	</table>
</body>
</html>