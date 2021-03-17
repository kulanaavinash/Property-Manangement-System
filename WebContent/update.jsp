<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css\main.css">
<link rel="stylesheet" type="text/css" href="css\update.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Update Products</title>
</head>
<body>
	<div class="wrapper">
		<div class="top-bar clearfix">
			<div class="top-bar-links">
				<ul>
					<li><a href="register.jsp">Sign Up</a></li>
					<li><a href="login.jsp">Log In</a></li>
                    
				</ul>
               
                
			</div> <!-- top-bar-links -->
            
            
            <div class="top-bar-links-left">
            
            <p> Hotline : 071 9 774 774</p>
            
            </div>
            
			<div class="site-search">
				<form method="get" action="index.html">
					<input type="search" name="search-box">
					<button type="submit"></button>
				</form>
			</div> <!-- site-search -->
		</div> <!-- top-bar -->

		<header class="clearfix">
			<div class="logo">
                <img src="images/black.png" height="100px" width="300px">
			</div> <!-- logo -->

			<div class="socialmedia">
				<ul>
					<li><a href="#"><i class="fa fa-linkedin fa-fw" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter fa-fw" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-pinterest fa-fw" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-google-plus fa-fw" aria-hidden="true"></i></a></li>
					<li><a href="#"><i class="fa fa-rss fa-fw" aria-hidden="true"></i></a></li>
				</ul>
			</div> <!-- socialmedia -->

		</header>

		<nav>
			<ul>
				<li><a href="#">Sample Product</a></li>
				<li><a href="#">Top Designs</a></li>
				<li><a href="#">About Us</a></li>
                <li><a href="#">Contact US</a></li>
			</ul>
		</nav>
            
    </header>
	<div class="frame">
		<div class="container">	
			<div class="wrap">
				<form class="form" action="PropertyController" method="POST">
				  <div class="form-group">
			    	<label class="labeladd" for="exampleInputUser">Product name</label>
			    	<input type="text" name="powner" class="form-control" id="inputadd" placeholder="Product name" value="${property.propertyOwner}" required/>   
			  	  </div>
			  	  <div class="form-group">
			    	<label class="labeladd" for="exampleInputPassword1">Product category</label>
			    	<input type="text" name="pstatus" class="form-control" id="inputadd" placeholder="Product category" value="${property.propertyStatus}" required/>
			  	  </div>
			  	  <div class="form-group">
			    	<label class="labeladd" for="exampleInputUser">Quantity</label>
			    	<input type="text" name="pprice" class="form-control" id="inputadd" placeholder="Quantity" value="${property.propertyPrice}" required/>   
			  	  </div>
			  	   <div class="form-group">
			    	<label class="labeladd" for="exampleInputUser">Tailorshop name</label>
			    	<input type="text" name="paddress" class="form-control" id="inputadd" placeholder="Tailorshop name" value="${property.propertyAddress}" required/>   
			  	  </div>
			  	    <input type = "hidden" name = "id" value = "${property.id}"/>			   	 
			  		<button type="submit" class="btn btn-primary" id="buttonadd">Save Product</button> 
			  	</form>
			 </div>	
		</div>  
	</div>
</body>
<footer>

	
	<div class="footercol">
				<h4>Hours Of Operation</h4>
				<div class="tweet">
					<p>We are available from 9 am - 6 pm, Monday through Friday (Sri Lanka Time)
                        
                       <br><br>
                        Orders placed after 2:00 pm will be delivered on the following day.

                        (Subject to change/ Contact Pharmacist-0719774774)
					</p>
				</div> 
				
			</div> <!-- footercol -->
						
			<div class="footercol">
				<h4>Quick Links</h4>
				<ul class="quicklinks">
					<li><a href="#">Ordering Details</a></li>
					<li><a href="#">Special Promotions</a></li>
					
					<li><a href="#">Speciality</a></li>
					
				</ul> <!-- quicklinks -->
			</div> <!-- footercol -->
						
			<div class="footercol">
				<h4>Blog Post</h4>
                
				<div class="blogpost">
					<h5>Join with us</h5>
					<div class="postinfo">
						<br>
						Sunday, 29th May 2019
					</div> <!-- postinfo -->
					<p>Fashion also alludes to the way in which things are made; to fashion something is to make it in a particular form. .</p>
					<a href="#" class="readmore">Read more &raquo;</a>
				</div> 
                <br>
                <hr>
                <br><!-- blogpost -->
				<div class="blogpost">
					<h5>One Couple’s Journey on the Bumpy Road of Infertility</h5>
					<div class="postinfo">
						<br>
						Sunday, 19th May 2018
					</div> <!-- postinfo -->
					<p>Did you ever think you’d end up being a human pin cushion science experiment? No?</p>
					<a href="#" class="readmore">Read more &raquo;</a>
				</div> <!-- blogpost -->
			</div> <!-- footercol -->
						
			<div class="footercol">
				<h4>Help Links</h4>

                <ul class="quicklinks">
                    <li><a href="#">About</a></li>
					<li><a href="#">FAQs</a></li>
					<li><a href="#">Contact Us</a></li>
				
					<li><a href="#"> Contact Details</a></li>
					<li><a href="#">Terms & Conditions</a></li>
					
					<li><a href="#">Privacy & Policy</a></li>
					
				</ul> <!-- quicklinks -->         
                
			</div> <!-- footercol -->

		</footer>
</footer>

</html>