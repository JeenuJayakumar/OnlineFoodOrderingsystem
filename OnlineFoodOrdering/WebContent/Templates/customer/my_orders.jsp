<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="ofo.dto.*,java.util.*,java.text.SimpleDateFormat,ofo.bl.*"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cart</title>


 <!-- CSS Files -->
    <link rel="stylesheet" href="../assets/css/animate-3.7.0.css">
    <link rel="stylesheet" href="../assets/css/font-awesome-4.7.0.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap-4.1.3.min.css">
    <link rel="stylesheet" href="../assets/css/owl-carousel.min.css">
    <link rel="stylesheet" href="../assets/css/jquery.datetimepicker.min.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <style type="text/css">
    <!-- navigation bar    -->
    ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: grey;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

/* Change the link color to #111 (black) on hover */
li a:hover {
  background-color: #111;
}
    
    
    
    
    .column {
    float:left;
 
  width: 33.33%;
  padding: 10px;
}

/* Clear floats after image containers */
.row::after {
  content: "";
  clear: both;
  display: table;
}

</style>


</head>
<body>


 <!-- Preloader Starts -->
    <div class="preloader">
        <div class="spinner"></div>
    </div>
    <!-- Preloader End -->

    <!-- Header Area Starts -->
	<header  class="p-3 mb-2 bg-dark text-white">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    <div class="logo-area">
                       <img src="../assets/images/logo/logo2.png" alt="logo"></a>
                    </div>
                </div>
                <div class="col-lg-10">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>  
                    <div class="main-menu main-menu2">
                    <div class="nav nav-tabs"></div>
                        <ul>
                            <li class="active"><a href="home.jsp">HOME</a></li>
                             <li><a href=" ">CATEGORIES</a>
                            <ul class="sub-menu">
                                    <li><a href="veg.jsp?category=veg">VEG</a></li>
                                    <li><a href="veg.jsp?category=nonveg">NON VEG</a></li>
                                </ul>
                            </li>
                            <li><a href="cart.jsp">MY CART</a></li>
                            <li><a href="my_orders.jsp">MY ORDERS</a></li>
                             <li><a href="../../logout.jsp">LOGOUT</a></li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    
   <%!ArrayList<FinalOrderDTO> orders;
	String customer_id, customerid;%>
	<%
		customerid = (String) session.getAttribute("userid");
		customer_id = "'" + customerid + "'";
		orders = new ArrayList<FinalOrderDTO>();
		orders = OrderBL.getFinalOrders(customerid);
	%>
	<table class="table table-striped table-hover">
		<tr>
			<th style="text-align: center">Order ID</th>
			<th style="text-align: center">Customer ID</th>
			<th style="text-align: center">Food ID</th>
			<th style="text-align: center">Quantity</th>
			<th style="text-align: center">Total Price</th>
			<th style="text-align: center">Order Date</th>
			<th style="text-align: center">Status</th>
			

		</tr>
		<%
			for (FinalOrderDTO order : orders) {
		%>
		<tr>
			<td style="text-align: center"><%=order.getOrder_id()%></td>
			<td style="text-align: center"><%=order.getCustomer_id()%></td>
			<td style="text-align: center"><%=order.getFood_id()%></td>
			<td style="text-align: center"><%=order.getQuantity()%></td>
			<td style="text-align: center"><%=order.getPrice()*order.getQuantity()%></td>
			<td style="text-align: center"><%=order.getOrder_date()%></td>
			<td style="text-align: center"><%=order.getOrder_status()%></td>

		</tr>
		<%
			}
		%>

	</table>
    
    <br><br>
    
    
    
    
    <footer class="footer-area">
        <div class="footer-widget section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <div class="single-widget single-widget1">
                            <img src="../assets/images/logo/logo2.png" alt=""></a>
                            <p class="mt-3">We are committed to nurturing a neutral platform and are helping food establishments maintain high standards through Hyperpure.
                             Food Hygiene Ratings is a coveted mark of quality among our restaurant partners</p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-widget single-widget2 my-5 my-md-0">
                            <h5 class="mb-4">contact us</h5>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-map-marker"></i>
                                </div>
                                <div class="info-text">
                                    <p>Keltron complex, secretariat road, palayam, Thiruvananthapuram</p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <div class="info-text">
                                    <p>0474 2345678</p>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="into-icon">
                                    <i class="fa fa-envelope-o"></i>
                                </div>
                                <div class="info-text">
                                    <p>foodfun@gmail.com</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    
                     <div class="col-md-4">
                        <div class="single-widget single-widget3">
                        <div class="social-icons">
                            <ul>
                             
                               
                                </ul>
                                </div>
                            
                        </div>
                    </div>
                    
                    
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7 col-md-6">
                        <span><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This app is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">foodfun</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="social-icons">
                            <ul>
                             	 <li><a href="about.html">About Us</a></li>
                                <li><a href="privacy.html">privacy&policy</a></li>
                                <li><a href="terms.html">terms&conditions</a></li>
                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer Area End -->
  
    



 <!-- Javascript -->
    <script src="../assets/js/vendor/jquery-2.2.4.min.js"></script>
	<script src="../assets/js/vendor/bootstrap-4.1.3.min.js"></script>
    <script src="../assets/js/vendor/wow.min.js"></script>
    <script src="../assets/js/vendor/owl-carousel.min.js"></script>
    <script src="../assets/js/vendor/jquery.datetimepicker.full.min.js"></script>
    <script src="../assets/js/vendor/jquery.nice-select.min.js"></script>
    <script src="../assets/js/main.js"></script>

</body>
</html>