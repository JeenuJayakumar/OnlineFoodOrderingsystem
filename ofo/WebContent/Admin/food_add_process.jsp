<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>food add process</title>
</head>
<body>
<%! FoodDTO food;
	String food_id,item_name,category;
	double unit_price;
	int result=0;
%>

<%
	food = new FoodDTO();
	food_id = request.getParameter("food_id");
	item_name = request.getParameter("item_name");
	unit_price =Double.parseDouble(request.getParameter("price"));
	category = request.getParameter("category");
	
	food.setFood_id(food_id);
	food.setItem_name(item_name);
	food.setPrice(unit_price);
	food.setCategory(category);
	
	result= FoodBL.addFoodItem(food);
	if(result>0)
	{
		session.setAttribute("addfood", "Food Item Added successfully");
		response.sendRedirect("admin_home.jsp");
	}
	
	else
	{
		session.setAttribute("addfood", "Food Item Not added.. Please try again Later");
		response.sendRedirect("admin_home.jsp");
	}
	
	

%>

</body>
</html>