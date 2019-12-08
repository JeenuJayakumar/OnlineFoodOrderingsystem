<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="ofo.dto.*,ofo.bl.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login check page</title>
</head>
<body>
	<%!UserDTO user1 = null;
	UserDTO user2 = null;
	String username, password;
	String message = "	";
	String userid = "";%>
	<%
		if (request.getParameter("login") != null) {
			username = request.getParameter("username");
			password = request.getParameter("password");
			user1 = new UserDTO();
			user1.setUsername(username);
			user1.setPassword(password);
			user2 = new UserDTO();
			user2 = UserBL.checkLogin(user1);
			userid = user2.getId();

			if (user2.getUsername() != null) {
				session.setAttribute("user_name", user2.getUsername());
				session.setAttribute("userid", userid);
				if (user2.getUsername().equals("admin") && user2.getPassword().equals("admin")) {
					response.sendRedirect("Admin/admin_home.jsp");
				} 
				else if(user2.getPassword().contains("ag"))
				{
					response.sendRedirect("DeliveryAgent/pending_orders.jsp");
				}
				else {
					response.sendRedirect("Templates/customer/home.jsp");
				}

			}

			else {
				session.setAttribute("message", "Wrong User ID or Password");
				response.sendRedirect("Templates/form/Login/login.jsp");

			}
		}
	%>




</body>
</html>