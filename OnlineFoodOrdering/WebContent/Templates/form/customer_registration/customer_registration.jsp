<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.utilities.*"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="../../../Validation/registrationvalidation.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Customer Registration</title>

<!-- Required meta tags-->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Colorlib Templates">
<meta name="author" content="Colorlib">
<meta name="keywords" content="Colorlib Templates">

<!-- Title Page-->
<title>Registration Form</title>

<!-- Icons font CSS-->
<link href="../../../../ofo/Templates/form/customer_registration/vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">


	
<link href="../../../../ofo/Templates/form/customer_registration/vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
	

<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="../../../../ofo/Templates/form/customer_registration/vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="../../../../ofo/Templates/form/customer_registration/vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">
<link href="../../../../ofo/Templates/form/customer_registration/vendor/select2/dist/css/select2.min.css" rel="stylesheet" />


<!-- Main CSS-->
<link href="../../../../ofo/Templates/form/customer_registration/css/main1.css" rel="stylesheet" media="all">
</head>
<body>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
	<%
		String customeradd = (String) session.getAttribute("customeradd");
	String customer_id=AutoIdGenerator.generateId();
	//session.setAttribute("customerid",customer_id);
	%>
	<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
		<div class="wrapper wrapper--w960">
			<div class="card card-2">
				<div class="card-heading"></div>
				<div class="card-body">


					<div class="login100-form-avatar">
						<center>
							<img src="../../../../ofo/Templates/assets/images/logo/logo.png" alt="AVATAR">
						</center>
					</div>
					<br>

					<center>
						<h2 class="title">Register here</h2>
					</center>


					<form:form name="myForm" method="post" action="addCustomer"
						onsubmit="return ValidateEmail();" >
						
					 	<div class="input-group">
							<form:input class="form-control" type="text" 
								path="customerId" value='<%=customer_id %>' readonly="readonly" />
						</div>  

						<div class="input-group">
							<form:input class="form-control" type="text" placeholder="Enter Name"
								path="customerName" required="required" />
						</div>


						<div class="input-group">
							<form:input class="form-control" type="text" placeholder="Enter Email"
								path="email" required="required"/>
						</div>

						<div class="input-group">
							<form:input class="form-control" type="text"
								placeholder="Enter Mobile Number" path="mobile"
								pattern="[0-9]{10}" required="required" />
						</div>

						<div class="input-group">
							<label for="exampleFormControlTextarea3"></label>
							<form:textarea class="form-control" id="exampleFormControlTextarea3"
								rows="7" placeholder="Address" path="address" required="required" />
						</div>




						<div class="col-2">
							<div class="input-group">
								<%--     <div class="form-control">  --%>
								Gender<form:select path="gender">
									
									<form:option value="Male">Male</form:option>
									<form:option value="Female">Female</form:option>
								</form:select>
								<div class="select-dropdown"></div>
								<%--       </div>   --%>
							</div>
						</div>


						<div class="form-group">
							<!-- Date input -->

							<form:input class="form-control" type="date" path="dateOfBirth"
								placeholder="MM/DD/YYY" />
						</div>


						<div class="p-t-30">
							<button class="btn btn--radius btn--green" type="submit"
								name="login">Register</button>
							<span class="label label-default" style="color: red;" id="spanid"></span>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>






	<!-- Jquery JS-->
	<script src="../../../../ofo/Templates/form/customer_registration/vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="../../../../ofo/Templates/form/customer_registration/vendor/select2/select2.min.js"></script>
	<script src="../../../../ofo/Templates/form/customer_registration/vendor/select2/dist/js/select2.min.js"></script>
	<script src="../../../../ofo/Templates/form/customer_registration/vendor/datepicker/moment.min.js"></script>
	<script src="../../../../ofo/Templates/form/customer_registration/vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="../../../../ofo/Templates/form/customer_registration/js/global.js"></script>
</body>
</html>