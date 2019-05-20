<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link href='https://fonts.googleapis.com/css?family=Merienda'
	rel='stylesheet'>
<link href="https://cdn.rawgit.com/michalsnik/aos/2.1.1/dist/aos.css"
	rel="stylesheet">

<title>Italian Restaurant Recipes</title>
<link rel="icon" href="images/logo.png">
<meta charset="UTF-8">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
	<div id="fb-root"></div>
	<script async defer crossorigin="anonymous"
		src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v3.3&appId=2179047182173404&autoLogAppEvents=1"></script>
	<script>
		// This is called with the results from from FB.getLoginStatus().
		function statusChangeCallback(response) {
			console.log('statusChangeCallback');
			console.log(response);
			console.log(response.authResponse.accessToken);
			//alert(response.authResponse.accessToken);
			if (response.status === 'connected') {
				window.location.href = 'Sign_in_Controller.jsp?access_token='
						+ response.authResponse.accessToken;
			} else {
				// The person is not logged into your app or we are unable to tell.
				document.getElementById('status').innerHTML = 'Please log '
						+ 'into this app.';
			}
		}
		// This function is called when someone finishes with the Login
		// Button. See the onlogin handler attached to it in the sample
		// code below.
		function checkLoginState() {
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		}
		window.fbAsyncInit = function() {
			FB.init({
				appId : '2179047182173404',
				cookie : true, // enable cookies to allow the server to access 
				// the session
				xfbml : true, // parse social plugins on this page
				version : 'v2.8' // use graph api version 2.8
			});
			FB.getLoginStatus(function(response) {
				statusChangeCallback(response);
			});
		};
		// Load the SDK asynchronously
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = "https://connect.facebook.net/en_US/sdk.js";
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
		// Here we run a very simple test of the Graph API after login is
		// successful. See statusChangeCallback() for when this call is made.
	</script>
	<br>
	<div id="Welcome">
		<!---Start navigation Bar -->
		<nav
			class="navbar navbar-expand-lg navbar fixed-top  navbar-light bg-light">
			<a class="navbar-brand" href="#Welcome"> <img
				src="images/logo.png" width="50" height="50" class="d-inline-block"
				alt=""> Italian Restaurant Recipes
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarText" aria-controls="navbarText"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav ml-auto">
				</ul>
			</div>
		</nav>
		<!--- End Navigation Bar -->
		<!--- Start Carousel -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block w-100 img-fluid img-slider"
						src="images/location.jpg" alt="Third slide">
					<div class="carousel-caption">
						<h1>
							<span style="color: #FFFFFF;">Login to view recipes </span>
						</h1>
						<br>
						<fb:login-button size="xlarge" scope="public_profile,email"
							onlogin="checkLoginState();">
  									 Continue with Facebook
</fb:login-button>
					</div>

				</div>
				
			</div>
		</div>
		<!--- End of Carousel -->
		<!--- Restaurant-->
		<div id="status"></div>
</body>
<footer class="container">
	<div class="row only-mobile">
		<div class="col-6">
			<a class="btn btn-primary btn-block text-center"
				href="tel:++390000000"><i class="fa fa-phone" aria-hidden="true"></i>
				Call</a>
		</div>
		<div class="col-6">
			<a class="btn btn-success btn-block text-center"
				href="https://api.whatsapp.com/send?phone=+390000000"><i
				class="fab fa-whatsapp" aria-hidden="true"></i> Whatsapp</a>
		</div>
	</div>
</footer>
</html>