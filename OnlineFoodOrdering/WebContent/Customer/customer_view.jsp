<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  <% String customer_id = (String)session.getAttribute("customerid"); 
  		
  	//	response.sendRedirect("/ofo/Customer/username_password.jsp?customer_id=");// pending
  %>
<h1>customerList</h1>  
<table class="table table-bordered table-striped table-hover">
<tr><th>Id</th><th>Name</th><th>Mobile</th><th>Gender</th><th></th><th></th></tr>  
  <c:forEach var="customer" items="${list}">  
   	<c:if test="${customer.customerId eq '${sessionScope.customer_id}'}">
   <tr class="active">  
   <td>${customer.customerId}</td>  
   <td>${customer.customerName}</td>  
   <td>${customer.mobile}</td>  
   <td>${customer.gender}</td>  
   <td><a href="edituser/${customer.customerId}">Edit</a></td>  
   <td><a href="deletecustomer/${customer.customerId}">Delete</a></td>  
   </tr>  
   </c:if>
   </c:forEach>  
   </table>  
   <br/>  
   <a href="../OnlineFoodOrdering/addcustomerform">Add New customer</a>
   <a href = "/ofo/Customer/username_password.jsp?customer_id=<%= customer_id%>">Set Username And Password</a>
</body>
</html>