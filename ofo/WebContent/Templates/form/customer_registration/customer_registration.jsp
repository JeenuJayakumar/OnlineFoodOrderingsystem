<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript"
	src="../../../Validation/registrationvalidation.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
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
<link href="vendor/mdi-font/css/material-design-iconic-font.min.css"
	rel="stylesheet" media="all">
<link href="vendor/font-awesome-4.7/css/font-awesome.min.css"
	rel="stylesheet" media="all">
<!-- Font special for pages-->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i"
	rel="stylesheet">

<!-- Vendor CSS-->
<link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
<link href="vendor/datepicker/daterangepicker.css" rel="stylesheet"
	media="all">

<!-- Main CSS-->
<link href="css/main1.css" rel="stylesheet" media="all">
</head>
<body>
	<%
		String customeradd = (String) session.getAttribute("customeradd");
	%>
	<div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
		<div class="wrapper wrapper--w960">
			<div class="card card-2">
				<div class="card-heading"></div>
				<div class="card-body">


					<div class="login100-form-avatar">
						<center>
							<img src="../../assets/images/logo/logo.png" alt="AVATAR">
						</center>
					</div>
					<br>

					<center>
						<h2 class="title">Register here</h2>
					</center>


					<form name="myForm" method="post" action="../../../Customer/customer_add.jsp"
						onsubmit="return ValidateEmail();">

						<div class="input-group">
							<input class="form-control" type="text" placeholder="Enter Name"
								name="CustomerName" required>
						</div>


						<div class="input-group">
							<input class="form-control" type="text" placeholder="Enter Email"
								name="EmailId">
						</div>

						<div class="input-group">
							<input class="form-control" type="text"
								placeholder="Enter Mobile Number" name="MobileNo"
								pattern="[0-9]{10}" required>
						</div>

						<div class="input-group">
							<label for="exampleFormControlTextarea3"></label>
							<textarea class="form-control" id="exampleFormControlTextarea3"
								rows="7" placeholder="Address" name="Address" required></textarea>
						</div>




						<div class="col-2">
							<div class="input-group">
								<%--     <div class="form-control">  --%>
								<select name="Gender">
									<option disabled="disabled" selected="selected">Gender</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>
								<div class="select-dropdown"></div>
								<%--       </div>   --%>
							</div>
						</div>


						<div class="form-group">
							<!-- Date input -->

							<input class="form-control" type="date" name="DOB"
								placeholder="MM/DD/YYY" />
						</div>


						<div class="p-t-30">
							<button class="btn btn--radius btn--green" type="submit"
								name="login">Register</button>
							<span class="label label-default" style="color: red;" id="spanid"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>






	<!-- Jquery JS-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<!-- Vendor JS-->
	<script src="vendor/select2/select2.min.js"></script>
	<script src="vendor/datepicker/moment.min.js"></script>
	<script src="vendor/datepicker/daterangepicker.js"></script>

	<!-- Main JS-->
	<script src="js/global.js"></script>
</body>
</html>