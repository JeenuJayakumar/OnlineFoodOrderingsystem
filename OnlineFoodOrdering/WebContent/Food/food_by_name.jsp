<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="java.util.*,ofo.bl.*,ofo.dto.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Search Food By Name</title>
</head>
<body>
	<%!String item, item_name;
	ArrayList<FoodDTO> foods;%>
	<%
		item = request.getParameter("item_name");
		item_name = "'%" + item + "%'";
		foods = new ArrayList<FoodDTO>();
		foods = FoodBL.getFoodByName(item_name);

		if (foods != null && foods.size() > 0) {
	%>
	<div class="container">
		<table
			class="table table-bordered table-responsive table-striped table-hover"
			style="width: 500px; margin: auto;">

			<tr>


				<th>Item</th>
				<th>Price</th>
				<th>Category</th>
				<th>Add To Cart</th>
			</tr>
			<%
				for (FoodDTO food : foods) {
			%>
			<tr>
				<td><%=food.getItem_name()%></td>
				<td><%=food.getPrice()%></td>
				<td><%=food.getCategory()%></td>
				<td><a
					href="../Customer/add_to_cart.jsp?food_id=<%=food.getFood_id()%>">Add
						To Cart</a></td>
			</tr>
			<%
				}
				} else {
			%>
			<tr>
				<td>No Food Details Found</td>
			</tr>
			<%
				}
			%>

		</table>
	</div>

</body>
</html>