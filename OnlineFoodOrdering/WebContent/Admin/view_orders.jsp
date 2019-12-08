<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.bl.*,java.util.*,ofo.dto.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table,td,th{
		style="text-align:center"

}

</style>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>View Orders</title>
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
<h1 class="jumbotron bg-danger text-dark" align="center">Pending Orders</h1>
	<%!ArrayList<PurchaseOrderDTO> orders;
	ArrayList<PurchaseOrderDTO> pendingOrders;
	ArrayList<PurchaseOrderDTO> approvedOrders;%>

	<%
	if(session.getAttribute("user_name")==null)
	{
		response.sendRedirect("../login.jsp");
	}
		orders = new ArrayList<PurchaseOrderDTO>();
		pendingOrders = new ArrayList<PurchaseOrderDTO>();
		approvedOrders = new ArrayList<PurchaseOrderDTO>();
		orders = OrderBL.getPurchaseOrders();
		for (PurchaseOrderDTO order : orders) {
			if (order.getOrder_status().equals("PENDING")) {

				pendingOrders.add(order);

			} else if(order.getOrder_status().equals("APPROVED")) {
				approvedOrders.add(order);
			}
		}

		session.setAttribute("pendingorders", pendingOrders);
		session.setAttribute("approvedorders", approvedOrders);
	%>
	<table class="table table-bordered table-striped">
		<tr>
			<th style="text-align:center">Order ID</th>
			<th style="text-align:center">Customer ID</th>
			<th style="text-align:center">Total Price</th>
			<th style="text-align:center">Order Date</th>
			<th style="text-align:center">Order Status</th>
			<th style="text-align:center">Approve Order</th>
		</tr>
		<%
			for (PurchaseOrderDTO order : pendingOrders) {
		%>
		<tr>
			<td style="text-align:center"><%=order.getOrder_id()%></td>
			<td style="text-align:center"><%=order.getCustomer_id()%></td>
			<td style="text-align:center"><%=order.getTotal_price()%></td>
			<td style="text-align:center"><%=order.getOrder_date()%></td>
			<td style="text-align:center;color:red;"><%=order.getOrder_status()%></td>
			<td style="text-align:center"><a
				href="assign_agent.jsp?order_id=<%=order.getOrder_id()%>">Approve</a></td>
		</tr>
		<%
			}
		%>

	</table>
</body>
</html>