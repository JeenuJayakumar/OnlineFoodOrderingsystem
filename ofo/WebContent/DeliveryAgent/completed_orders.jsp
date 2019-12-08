<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.bl.*,java.util.*,ofo.dto.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Completed Orders</title>
</head>
<body>
<div class="topnav">
		<a class="active" href="pending_orders.jsp">View Orders</a> <a
			href="completed_orders.jsp">Completed Orders</a> <a
			href="../logout.jsp">Logout</a>
	</div>
<%
ArrayList<PurchaseOrderDTO> deliveredOrders = (ArrayList<PurchaseOrderDTO>) session
.getAttribute("completedorders");

if(deliveredOrders!=null)
{
	%>
	<table class="table table-bordered table-striped">
	<tr>
		<th style="text-align:center">Order ID</th>
		<th style="text-align:center">Customer ID</th>
		<th style="text-align:center">Total Price</th>
		<th style="text-align:center">Order Date</th>
		<th style="text-align:center">Order Status</th>
		
	</tr>
	<%
		for (PurchaseOrderDTO order : deliveredOrders) {
	%>
	<tr>
		<td style="text-align:center"><%=order.getOrder_id()%></td>
		<td style="text-align:center"><%=order.getCustomer_id()%></td>
		<td style="text-align:center"><%=order.getTotal_price()%></td>
		<td style="text-align:center"><%=order.getOrder_date()%></td>
		<td style="text-align:center;color:red;"><%=order.getOrder_status()%></td>
	</tr>
	<%
		}
	%>

</table>
<%
}

%>
</body>
</html>