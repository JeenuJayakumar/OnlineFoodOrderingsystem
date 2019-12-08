<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	<%!String message;%>
	<%
		message = (String) session.getAttribute("message");
	%>
	<h1 class="jumbotron bg-dark text-white" align="center">LOGIN</h1>
	<div class="container">
		<form action="login_check.jsp" style="width: 500px; margin: auto;">
			<div class="form-group">
				<label>Username</label> <input type="text" name="username"
					class="form-control" required>
			</div>

			<div class="form-group">
				<label>Password</label> <input type="password" name="password"
					class="form-control" required>
			</div>

			<div class="form-group">
				<label></label>
				<button type="submit" name="login"
					class="form-control btn-outline-primary">Login</button>
				<span style="color: red;"><%=message%></span>
			</div>
		</form>

		<form action="Customer/customer_registration.jsp"
			style="width: 500px; margin: auto;">
			<div class="form-group">
				<label></label>
				<button type="submit" name="register"
					class="form-control btn-success">New User</button>

			</div>
		</form>
	</div>
</body>
</html>