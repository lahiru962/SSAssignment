<%@page import="javafx.scene.control.Alert"%>
<%@page import="com.chillyfacts.com.profile.Profile_Bean"%>
<%@page import="com.chillyfacts.com.profile.Profile_Modal"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link href='https://fonts.googleapis.com/css?family=Merienda' rel='stylesheet'>
		<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css" rel="stylesheet">

    	<title>Italian Restaurant Recipes</title>
    	<link rel="icon" href="images/logo.png">

	</head>
	<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<%
String access_token=(String)request.getParameter("access_token");
Profile_Modal obj_Profile_Modal=new Profile_Modal();
Profile_Bean obj_Profile_Bean= obj_Profile_Modal.call_me(access_token);
%>
<br>
	  	<div id="Welcome">
	  		<!---Start navigation Bar -->
	    	<nav class="navbar navbar-expand-lg navbar fixed-top  navbar-light bg-light">
		 		<a class="navbar-brand" href="#Welcome">
    				<img src="images/logo.png" width="50" height="50" class="d-inline-block" alt=""> Logged in as <%=obj_Profile_Bean.getEmail() %>
		 		</a>
		 		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
		    		<span class="navbar-toggler-icon"></span>
		 		</button>
			  	<div class="collapse navbar-collapse" id="navbarText">
			    	<ul class="navbar-nav ml-auto">
				    </ul>
				</div>
			</nav>
			<!--- End Navigation Bar -->
			<!--- Start Carousel -->
			<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
				</ol>
				<div class="carousel-inner">
					<div class="carousel-item active">
				      	<img class="d-block w-100 img-fluid img-slider" src="images/slider3.jpg" alt="Third slide">
				      	<div class="carousel-caption">
						    <h1><span style="color:#FFFFFF;">Welcome Back <%=obj_Profile_Bean.getUser_name() %> ! </h1>
						</div>
				  
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
					<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="sr-only">Previous</span>
				</a>
				<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
					<span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="sr-only">Next</span>
				</a>
			</div>
		</div>
			<!--- End of Carousel -->
			<!--- Restaurant-->
			<div class="row bg-light" >
  				<div class="col-md-6">
  					<h3>Location</h3>
  					<p>Thanks for stopping by. We are the last authentic Italian restaurant in Milan, serving delicious Italian cuisine cooked by the best chefs. It only takes a few minutes to browse through our website and check out our menu. We hope you'll soon join us for a superb Italian culinary experience.</p>
  					<h5>A Unique Experience</h5>
  					<p>Thanks for stopping by. We are the last authentic Italian restaurant in Milan, serving delicious Italian cuisine cooked by the best chefs. It only takes a few minutes to browse through our website and check out our menu. We hope you'll soon join us for a superb Italian culinary experience.</p>
  				</div>
  				<div class="col-md-6" data-aos="fade-up">
  					<p>Thanks for stopping by. We are the last authentic Italian restaurant in Milan, serving delicious Italian cuisine cooked by the best chefs. It only takes a few minutes to browse through our website and check out our menu. We hope you'll soon join us for a superb Italian culinary experience.</p>
  				</div>
  			</div>
  			<div class="row bg-light"><br></div>
  			<div class="row bg-light">
  				<div class="col-md-6 order-md-1 order-2" data-aos="fade-up">
  					<p>Thanks for stopping by. We are the last authentic Italian restaurant in Milan, serving delicious Italian cuisine cooked by the best chefs. It only takes a few minutes to browse through our website and check out our menu. We hope you'll soon join us for a superb Italian culinary experience.</p>
  				</div>
  				<div class="col-md-6 order-md-12 order-1">
  					<h3>Cuisine</h3>
  					<h5>A Unique Experience</h5>
  					<p>Thanks for stopping by. We are the last authentic Italian restaurant in Milan, serving delicious Italian cuisine cooked by the best chefs. It only takes a few minutes to browse through our website and check out our menu. We hope you'll soon join us for a superb Italian culinary experience.</p>
  				</div>
  			</div>
		<div class="container">
		 
		<footer class="container">
			<div class= "row only-mobile">
				<div class="col-6">
					<a class="btn btn-primary btn-block text-center" href="tel:++390000000"><i class="fa fa-phone" aria-hidden="true"></i> Call</a>
				</div>
				<div class="col-6">
					<a class="btn btn-success btn-block text-center" href="https://api.whatsapp.com/send?phone=+390000000"><i class="fab fa-whatsapp" aria-hidden="true"></i> Whatsapp</a>
				</div>
			</div>
		</footer>
  	</body>
</html>
