<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,ofo.dto.*,ofo.bl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Approval</title>
</head>
<body>
	<%
		int order_id = Integer.parseInt(request.getParameter("order_id"));
		String agent_name = (String) request.getParameter("agent_name");
		session.setAttribute("agentname",agent_name);
		PurchaseOrderDTO toApprove = new PurchaseOrderDTO();
		ArrayList<PurchaseOrderDTO> pendingOrders = (ArrayList<PurchaseOrderDTO>) session
				.getAttribute("pendingorders");
		ArrayList<PurchaseOrderDTO> approvedOrders = (ArrayList<PurchaseOrderDTO>) session
				.getAttribute("approvedorders");

		for (PurchaseOrderDTO order : pendingOrders) {
			if (order.getOrder_id() == order_id) {

				toApprove = order;

			}
		}

		int result = OrderBL.updateOrderStatus("APPROVED",toApprove, agent_name);
		if (result > 0) {
			approvedOrders.add(toApprove);
			pendingOrders.remove(toApprove);
			response.sendRedirect("view_orders.jsp");
		}
	%>
</body>
</html>