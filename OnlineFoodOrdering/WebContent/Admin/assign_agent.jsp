<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*,java.util.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="../css/menu.css">
<meta charset="ISO-8859-1">
<title>Assign Delivery Agent</title>
</head>
<body>

<%
		int order_id = Integer.parseInt(request.getParameter("order_id"));
		ArrayList<DeliveryAgentDTO> agentdetails = new ArrayList<DeliveryAgentDTO>();
		agentdetails = DeliveryAgentBL.getDeliveryAgentDetails();
		if(agentdetails!=null)
%>
		<table class="table table-bordered table-striped">
		<tr>
			<th style="text-align:center">Agent ID</th>
			<th style="text-align:center">Agent Name</th>
			<th style="text-align:center">Contact Number</th>
			<th style="text-align:center"></th>
		</tr>
		<%
			for (DeliveryAgentDTO agent : agentdetails) {
		%>
		<tr>
			<td style="text-align:center"><%=agent.getAgent_id()%></td>
			<td style="text-align:center"><%=agent.getAgent_name()%></td>
			<td style="text-align:center"><%=agent.getMobile()%></td>
			<td style="text-align:center"><a
				href="approve_order.jsp?agent_name=<%=agent.getAgent_name()%>&order_id=<%=order_id%>">Assign</a></td>
		</tr>
		<%
			}
		%>

	</table>

</body>
</html>