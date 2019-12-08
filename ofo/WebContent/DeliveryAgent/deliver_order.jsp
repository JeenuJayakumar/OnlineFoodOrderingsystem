<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.bl.*,java.util.*,ofo.dto.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<PurchaseOrderDTO> deliveredOrders = new ArrayList<PurchaseOrderDTO>();
		ArrayList<PurchaseOrderDTO> todeliverOrders = new ArrayList<PurchaseOrderDTO>();
		PurchaseOrderDTO todeliver = new PurchaseOrderDTO();

		String agent_name = (String) session.getAttribute("agentname");
		int orderid = Integer.parseInt(request.getParameter("orderid"));
		todeliverOrders = (ArrayList<PurchaseOrderDTO>) session.getAttribute("todeliverorders");
		deliveredOrders = (ArrayList<PurchaseOrderDTO>) session.getAttribute("completedorders");

		if (todeliverOrders != null) {
			for(PurchaseOrderDTO order : todeliverOrders) {
				if (order.getOrder_id() == orderid) {
					
					todeliver = order;
				}
			}

				int result = OrderBL.updateOrderStatus("DELIVERED", todeliver, agent_name);
				if (result > 0) {
					
					deliveredOrders.add(todeliver);
					todeliverOrders.remove(todeliver);
					response.sendRedirect("completed_orders.jsp");
				}
			}

		
		
		else
		{
			out.println("No Pending orders!!!");
		}
	%>
</body>
</html>