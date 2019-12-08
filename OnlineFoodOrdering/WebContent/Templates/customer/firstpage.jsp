<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Required Meta Tags -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Page Title -->
    <title>First Page</title>

    <!-- Favicon -->
    <!-- link rel="shortcut icon" href="assets/images/logo/favicon.png" type="image/x-icon"-->

    <!-- CSS Files -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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




#div1
{

  padding-left:100px;
 
}
#div2
{
  padding-left:130px;
}
#div3
{
  padding-left:160px;
}


* {
  box-sizing: border-box;
}

/* Style the search field */
form.example input[type=text] {
  padding: 10px;
  font-size: 17px;
  border: 1px solid grey;
  float: center;
  width: 50%;
  background: #f1f1f1;
}

/* Style the submit button */
form.example button {
  float: center;
  width: 20%;
  padding: 10px;
  background: #2196F3;
  color: white;
  font-size: 17px;
  border: 1px solid grey;
  border-left: none; /* Prevent double borders */
  cursor: pointer;
}

form.example button:hover {
  background: #0b7dda;
}

/* Clear floats */
form.example::after {
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
	<header class="header-area header-area2">
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
                            <li class="active"><a href="../form/Login/login.jsp">Login</a></li>
                            <li><a href="../form/customer_registration/customer_registration.jsp">New User</a>
                             </li>
                           
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->

    <!-- Banner Area Starts -->
    <section class="banner-area banner-area2 menu-bg text-center">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h1><i>WELCOME FOODIESS</i></h1>
                    <p class="pt-3" ><i>Experience food fun's superfast delivery for food delivered fresh and on time</i></p>
                </div>
            </div>
        </div>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- The form -->
<form class="example" action="fooddisplay.jsp">
  <input type="text" placeholder="Search your favourite food" name="item_name">
  <button type="submit"><i class="fa fa-search"></i></button>
</form>
        
        
    </section>
    <!-- Banner Area End -->

    <!-- Food Area starts -->
    
    <br><br><br>
   
         <div class="row">
                <div class="col-md-4 col-sm-6">
                    <div class="single-food">
                        <div class="food-img">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../assets/images/new/f6.png" class="img-fluid" alt="">
                        </div>
                        <div class="food-content">
                            <div class="d-flex justify-content-between">
                            <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Explore</h5>
                            </div>
                            <p class="pt-3"> &nbsp;&nbsp;&nbsp;Explore restaurants that deliver to your doorstep</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-food mt-5 mt-sm-0">
                        <div class="food-img">
                      
                           <center><img src="../assets/images/new/f7.png" class="img-fluid" alt="" length="100px" ></center> 
                        </div>
                        <div class="food-content">
                            <div class="d-flex justify-content-between">
                                <h5> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  order   </h5>
                                
                            </div>
                            <p class="pt-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Browse menus and build your order in seconds</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6">
                    <div class="single-food mt-5 mt-md-0">
                        <div class="food-img">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <img src="../assets/images/new/f8.png" length="100px" class="img-fluid" alt="">
                        </div>
                        <div class="food-content">
                            <div class="d-flex justify-content-between">
                                <h5>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                &nbsp;&nbsp;&nbsp;alert</h5>
                                
                            </div>
                            <p class="pt-3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Follow the status of your order with real time alerts</p>
                        </div>
                    </div>
                </div>
            
        </div>
    </section>
    <section class="food-area section-padding"> 
        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <div class="section-top">
                        <h3><span class="style-change">we serve</span> <br>delicious food</h3>
                      <p class="pt-3">Enjoy delicious food and have a good time with your buddies.
                           The business of food delivery is undergoing rapid change every day as we are capturing markets and customers across the country. 
                           So as we grow along with the times, we are always looking for great people to join us on this exciting journey
                      </p>
                    </div>
                </div>
            </div>
            
            <div class="row">
             <div class="col-md-4 col-sm-6">
                    <div class="single-food mt-5 mt-sm-0">
                        <div class="food-img">
                            <img src="../assets/images/food2.jpg" class="img-fluid" alt="">
                        </div>
                       
                    </div>
                </div><br><br>
                <div class="col-md-4 col-sm-6">
                    <div class="single-food mt-5 mt-md-0">
                        <div class="food-img">
                            <img src="../assets/images/food3.jpg" class="img-fluid" alt="">
                        </div>
                       
                    </div>
                </div>
            
          
     </section>
    <!-- Food Area End -->

    <!-- Table Area Starts -->
   
    <!-- Table Area End -->

    <!-- Footer Area Starts -->
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
                             
                                <li><a href="about.jsp">About Us</a></li>
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
                        <span>
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This app is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">foodfun</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></span>
                    </div>
                    <div class="col-lg-5 col-md-6">
                        <div class="social-icons">
                            <ul>
                             
                                <li><a href="privacy.jsp">privacy&policy</a></li>
                                <li><a href="terms.jsp">terms&conditions</a></li>
                                
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
