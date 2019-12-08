<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Agent add process</title>
</head>
<body>


<%! DeliveryAgentDTO deliveryagent;
	String agent_id,agent_name,email,mobile;
	int result=0;
%>

<%
	deliveryagent = new DeliveryAgentDTO();
	agent_id = request.getParameter("agent_id");
	agent_name = request.getParameter("agent_name");
	email =request.getParameter("email");
	mobile = request.getParameter("mobile");
	
	deliveryagent.setAgent_id(agent_id);
	deliveryagent.setAgent_name(agent_name);
	deliveryagent.setEmail(email);
	deliveryagent.setMobile(mobile);
	
	
	result= DeliveryAgentBL.addDeliveryAgent(deliveryagent);
	if(result>0)
	{
		session.setAttribute("addagent", "Agent Added successfully");
		response.sendRedirect("admin_home.jsp");
	}
	
	else
	{
		session.setAttribute("addagent", "Agent Not added.. Please try again Later");
		response.sendRedirect("admin_home.jsp");
	}
	
	

%>

</body>
</html>