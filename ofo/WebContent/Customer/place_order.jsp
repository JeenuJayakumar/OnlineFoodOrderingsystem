<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.utilities.*,ofo.bl.*,ofo.dto.*,java.text.SimpleDateFormat,java.util.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>place order</title>
</head>
<body>
	<%!String customer_id, customerid, order_status;
	int order_id, result,cartremove;
	double total_price;
	SimpleDateFormat orderdate;
	PurchaseOrderDTO purchaseorder;
	OrderDetailsDTO orderdetails;
	ArrayList<CartDTO> carts;%>

	<%
		carts = new ArrayList<CartDTO>();
		carts = (ArrayList<CartDTO>) session.getAttribute("carts");
		purchaseorder = new PurchaseOrderDTO();
		customerid = (String) session.getAttribute("userid");
		customer_id = "'" + customerid + "'";
		//System.out.println("customerid: " + customer_id);

		purchaseorder.setCustomer_id(customerid);

		order_id = AutoIdGenerator.generateOrderId();
		purchaseorder.setOrder_id(order_id);

		CartDTO cartTotal = new CartDTO();
		cartTotal = CartBL.getCartTotal(customer_id);

		purchaseorder.setTotal_price(cartTotal.getTotal_price());
		purchaseorder.setOrder_status("PENDING");
		orderdate = new SimpleDateFormat("dd/MM/yy");
		purchaseorder.setOrder_date(orderdate.format(new Date())); // OrderDate

		result = OrderBL.insertIntoPurchaseOrder(purchaseorder);

		for (CartDTO cart : carts) {
			orderdetails = new OrderDetailsDTO();
			orderdetails.setCustomer_id(customerid);
			orderdetails.setOrder_id(order_id);
			orderdetails.setFood_id(cart.getFood_id());
			orderdetails.setQuantity(cart.getQuantity());
			orderdetails.setPrice(cart.getPrice());
			result = OrderBL.insertIntoOrderDetails(orderdetails);
		}

		if (result > 0) {
			session.setAttribute("purchase", "Order Successfull");
			cartremove = CartBL.removeOrderedItem(customerid);
			response.sendRedirect("../Templates/customer/home.jsp");
		} else {
			session.setAttribute("purchase", "Order Failed");
			response.sendRedirect("../Templates/customer/home.jsp");
		}
	%>
</body>
</html>