<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Remove From Cart</title>
</head>
<body>
<%!
		String food_id,customer_id,customerid,foodid;
		int result;
%>
<%
	food_id = request.getParameter("food_id");
	//food_id="'"+foodid+"'";
	customer_id = (String)session.getAttribute("userid");
	//customer_id="'"+customerid+"'";
//	System.out.println("foodid: "+food_id+"customerid: "+customer_id);
	result = CartBL.deleteFromCart(food_id,customer_id);
	if(result>0)
	{
		session.setAttribute("remove","Item removed successfully");
		response.sendRedirect("../Templates/customer/cart.jsp");
	}
	else
	{
		session.setAttribute("remove","Sorry!!! Please try again later...");
		response.sendRedirect("../Templates/customer/cart.jsp");
	}
%>

</body>
</html>