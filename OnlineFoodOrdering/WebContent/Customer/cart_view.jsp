<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.dto.*,java.util.*,java.text.SimpleDateFormat,ofo.bl.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Cart View</title>
</head>
<body>
	<div class="topnav">
		<a class="active" href="customer_home.jsp">Home</a> <a
			href="cart_view.jsp">View Cart</a> <a href="my_orders.jsp">My
			Orders</a> <a href="../logout.jsp">Logout</a>
	</div>
	<%!ArrayList<CartDTO> carts;
	String customerid, customer_id;
	SimpleDateFormat orderdate, deliverdate;
	String remove = "";%>
	<%
		carts = new ArrayList<CartDTO>();
		remove = (String) session.getAttribute("remove");
		if (remove != null) {
			out.println(remove);
		}

		customerid = (String) session.getAttribute("userid");
		customer_id = "'" + customerid + "'";
		orderdate = new SimpleDateFormat("dd/MM/yy");
		String formattedOrderDate = orderdate.format(new Date());// OrderDate
		deliverdate = new SimpleDateFormat("dd/MM/yy");
		String formattedDeliverDate = deliverdate.format(new Date());// DeliverDate
		carts = CartBL.getCartDetails(customer_id);
		CartDTO cartTotal = new CartDTO();
		session.setAttribute("carts", carts);
		cartTotal = CartBL.getCartTotal(customer_id);

		if (carts != null && carts.size() > 0) {

			for (CartDTO cart : carts) {
	%>
	<hr />
	<div class="container">
		<table class="table table-hover">
			<tr>
				<td>Item Name</td>
				<td><%=cart.getItem_name()%></td>
			</tr>
			<tr>
				<td>Price</td>
				<td><%=cart.getPrice()%></td>
			</tr>
			<tr>
				<td>Quantity</td>
				<td><%=cart.getQuantity()%></td>
			</tr>
			<tr>
				<td><a
					href="remove_from_cart.jsp?food_id=<%=cart.getFood_id()%>"><button
							class="btn btn-outline-danger" type="submit" name="removeitem">Remove
							From Basket</button></a>
		</table>
	</div>
	<%
		}
	%>
	<hr />
	<hr />
	<div class="container">
		<label>Total Price</label> <input type="text" class="form-control"
			value='&#8377; <%=cartTotal.getTotal_price()%>' readonly>
		<hr />
		<hr />
	</div>
	<div class="container">
		<a href="place_order.jsp"><button class="btn btn-success"
				type="submit" name="placeorder">Place Order</button></a>
	</div>
	<%
		} else {
	%>
	<p>No items in Cart</p>
	<%
		}
	%>
</body>
</html>