<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">



</head>
<body>
<%!String message="";%>
	<%
		message = (String) session.getAttribute("message");
	%>


  <div class="page-wrapper bg-red p-t-180 p-b-100 font-robo">
        <div class="wrapper wrapper--w960">
            <div class="card card-2">
                <div class="card-heading"></div>
                <div class="card-body">
                
                <div class="login100-form-avatar">
						<center><img src="../../assets/images/logo/logo.png" alt="AVATAR"></center>
					</div>
                
                
                    <h2 class="title"></h2>
                    <form method="POST" action="../../../login_check.jsp">
                        <div class="input-group">
                            <input class="input--style-2" type="text" placeholder="UserName" name="username">
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <input class="input--style-2" type="password" placeholder="Password" name="password">
                                   
                                    
                                </div>
                            </div>
                            <% if(message!=null)
                            	
                            	{
                            	%>
                            <span style="color: red;"><%=message%></span>
                            <%	} %>
                        <div class="p-t-30">
                            <button class="btn btn--radius btn--green" type="submit" name="login">Login</button>
                        </div>
                        
                        
                        <div class="flex-col-c p-t-224">
						<span class="txt2 p-b-10">
							do not have an account?
						</span>

						<a href="../customer_registration/customer_registration.jsp" class="txt3 bo1 hov1">
							Sign up now
						</a>
					</div>
                        
                        
                        
                    </form>
                </div>
            </div>
        </div>
    </div>




</body>
</html>