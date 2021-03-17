<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.container { text-align :center;}
					
					}
</style>
<link rel="stylesheet" type="text/css" href="css\head.css">
<link rel="stylesheet" type="text/css" href="css\register.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>
            
    </header>
	<div class="frame">
		<div class="container">	
			<div class="wrap">
				<form class="form" action="Register" method="post">
				  <div class="form-group">
			    	<label class="labelsign" for="exampleInputUser">Name</label>
			    	<input type="text" name="uname" class="form-control" placeholder="User name" required>   
			  	  </div>
			  	  <div class="form-group">
			    	<label class="labelsign" for="exampleInputPassword1">Password</label>
			    	<input type="password" name="pass" class="form-control" placeholder="Password" required>
			  	  </div>
			   	  <div class="form-group">
			    	<label class="labelsign" for="exampleInputEmail">Email</label>
			    	<input type="text" name="email" class="form-control" placeholder="Email" required>
			  	  </div>
			  		<button type="submit" class="btn btn-primary">Register</button> 
			  	</form>
			 </div>	
		</div>  
	</div>
</body>

</html>