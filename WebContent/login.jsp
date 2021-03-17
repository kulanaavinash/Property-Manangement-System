<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css\main.css">
<link rel="stylesheet" type="text/css" href="css\login.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

<title>Log in</title>
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

		

	<div class="frame">
		<div class="container">
		<div class="jumbotron">
		<h1 style = "text-align:center; font-family:bebas">Log In</h1>
		
			<div class="wrap">
				<form class="form" name="formlogin" action="Login" method="post">
		  			<div class="form-group">
		   				 <label class="labelsign" for="exampleInputUser">Name</label>
		    			 <input type="text" name="uname" class="form-control" placeholder="User name">   
		 			 </div>
		  			 <div class="form-group">
		   				 <label class="labelsign" for="exampleInputPassword1">Password</label>
		   				 <input type="password" name="pass" class="form-control" placeholder="Password">
		  			</div> 
		  			<button type="submit" class="btn btn-primary">Log in</button>		  			
		  			<p class="signup">Don't have an account?<a href="register.jsp">Sign Up</a></p>
		  		</form>
		  	</div>
	  	</div>
	  </div>
	  </div>
 <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script> 
  	  
  
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
	
	
</html>