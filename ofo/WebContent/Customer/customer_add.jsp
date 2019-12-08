<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,ofo.bl.*,java.text.SimpleDateFormat
,java.sql.Date,ofo.utilities.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<%! CustomerDTO customer;
	String customer_id,customer_name,email,mobile,address,gender,date_of_birth;	
	int result=0;
	//LocalDate DOB;
	//Date dob;

%>
<%
	customer = new CustomerDTO();
	//SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yy");
	customer_id=AutoIdGenerator.generateId();
	customer_name=request.getParameter("CustomerName");
	email=request.getParameter("EmailId");
	address=request.getParameter("Address");
	mobile=request.getParameter("MobileNo");
	gender=request.getParameter("Gender");
	date_of_birth=request.getParameter("DOB");
	//dob=sdf.parse(date_of_birth);
	//DOB = LocalDate.parse(date_of_birth);
	customer.setCustomer_id(customer_id);
	customer.setCustomer_name(customer_name);
	customer.setEmail(email);
	customer.setAddress(address);
	customer.setMobile(mobile);
	customer.setGender(gender);
	customer.setDate_of_birth(date_of_birth);
	//adding into DB
	result=CustomerBL.addCustomer(customer);
	if(result>0)
	{
		session.setAttribute("customerid",customer_id);
		session.setAttribute("customeradd","Registration Successfull");
		response.sendRedirect("username_password.jsp");
	}
	else
	{
		session.setAttribute("customeradd","Registration Failed");
		response.sendRedirect("../Templates/form/customer_registration/customer_registration.jsp");
	}

%>
</body>
</html>