<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>

 <link rel="stylesheet" type="text/css" href="css\welcome.css"> 
 <link rel="stylesheet" type="text/css" href="css\main.css">   
 <link rel="stylesheet" type="text/css" href="css\check.css"> 
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>

 <header>
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

	<form action="Logout">
		<div class="navbar navbar-expand-lg navbar-light bg-light">	
			<h5 class="font-italic">Hello ${username} </h5>	
			<button type="submit" value="Logout" class="btn btn-primary ml-auto">Log out</button>	
		</div>
	</form>
	
	 <%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); /// HTTP 1.1
		response.setHeader("Pragma", "no-cache"); /// HTTP 1.0
		response.setHeader("Expires", "0"); /// proxies
		
		if(session.getAttribute("username") == null){
			response.sendRedirect("login.jsp");
		}	
	%> 

		
	<table class="table table-dark" id="tablelist">
  		<thead>
		    <tr>      
		    <th scope="col">Product ID</th>
		      <th scope="col">Product name</th>
		      <th scope="col">Category</th>
		       <th scope="col">Quantity</th>
		       <th scope="col">TailorShop name</th>
		      <th scope="col">Options</th>
		    </tr>
  		</thead>
		<tbody>
			<c:forEach var="property" items="${propertyList}">
		    <tr>
		      <td><c:out value='${property.id}' /> </td>
		      <td><c:out value='${property.propertyOwner}' /> </td>
		      <td><c:out value='${property.propertyStatus}' /></td>
		      <td><c:out value='${property.propertyPrice}' /></td>
		      <td><c:out value='${property.propertyAddress}' /></td>
		      <td><a href ="${pageContext.request.contextPath}/PropertyController?action=EDIT&id=${property.id}">Edit</a> /
		      	  <a href ="${pageContext.request.contextPath}/PropertyController?action=DELETE&id=${property.id}">Delete</a></td>    
		    </tr>		      
		    </c:forEach>
  	    </tbody>  	    
	</table>	
	<a href="add.jsp" class="btn btn-info" role="button" id="addbutton">Add new products</a>
	<a href="javascript:OpenForm()"  class="btn btn-info" role="button" id="checkbutton">Check Out</a>
	<a href="${pageContext.request.contextPath}/PropertyController?action=LIST" class="btn btn-info" role="button" id="showbutton">Show products</a>
	

<!-- Check Out form -->
	
<div class="settings-form-container" id="CheckingForm">
<a href="javascript:void(0)" class="settings-form-close" onclick="CloseForm()">&times;</a>
<form method="POST" action="PropertyController" class="form-container">
<label ><b style ="display:block; margin-left:550px; color:white; z-index:1000;font-Family:blooming sans elegent; font-size:25px;">New sale</b></label><br>
 <div class = "form-group-settings">
<label>ID</label>
<input class="settings-input" type="text" name="id" placeholder="Item ID" value ="">
</div>
 <div class = "form-group-settings">
<label>Quantity</label>
 <input class="settings-input" type="text" placeholder="Quantity" name="qty" value ="">
</div>

 <button type="submit" class="settings-up-btn">Update</button>
 </form>

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

    <script type="text/javascript">
    function OpenForm(){
    	document.getElementById("CheckingForm").style.display ="block";
    	
    }
    function CloseForm(){
    	document.getElementById("CheckingForm").style.display ="none";
    	
    }
    </script>


    
</html>