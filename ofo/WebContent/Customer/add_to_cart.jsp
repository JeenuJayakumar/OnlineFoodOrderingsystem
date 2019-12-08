<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.dto.*,ofo.bl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart Add Page</title>
</head>
<body>
	<%!String food_id1, food_id2;
	FoodDTO food;
	int result;
	String customer_id;%>

	<%
		customer_id = (String) session.getAttribute("userid");
		System.out.print(customer_id);
		food = new FoodDTO();
		food_id1 = request.getParameter("food_id");
		food_id2 = "'" + food_id1 + "'";
		System.out.println("food_id2 = " + food_id2);
		food = FoodBL.getFoodByID(food_id2);
		try {
			/*	System.out.println(food.getItem_name());
			System.out.println(food.getCategory());
			System.out.println(food.getPrice());*/
			result = CartBL.addToCart(food, customer_id);

			if (result > 0) {
				session.setAttribute("success", "Added to cart!!!");
				response.sendRedirect("../Templates/customer/home.jsp");
			} else {
				session.setAttribute("success", "Failed!!!");
				//response.sendRedirect("menu.jsp");

			}
		} catch (Exception e) {
			System.out.println("**ERROR**" + e.getMessage());
		}
	%>

</body>
</html>