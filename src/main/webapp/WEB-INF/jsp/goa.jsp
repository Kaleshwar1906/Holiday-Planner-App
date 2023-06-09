<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/goa.css">
<link href='https://fonts.googleapis.com/css?family=Arvo'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Audiowide'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Blinker'
	rel='stylesheet'>
<link rel="icon" type="image/png" href="images/icon.png">
<title>Holiday Planner:Travel the world efficiently</title>
</head>
<body>
	<div class="front">

		<div class="top-nav">
			<a href="home"><img alt="HP" src="images/logo.png" class="logo"></a>
			<h2 style="font-family: Arvo">Holiday Planner</h2>
			<div class="links">
				<h3>
					<a href="home-contact">CONTACT US</a>
				</h3>
				<h3>
					<a href="bome-testimonial">TESTIMONIALS</a>
				</h3>
				<h3>
					<a href="main">LOGOUT</a>
				</h3>
				<h3>
					<a href="home-help">HELP</a>
				</h3>
			</div>
		</div>

		<div class="hero-text">
			<h1>GOA</h1>
			<h4>The Tourist Paradise</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->
	<c:set var="city" value="goa"></c:set>
	<div class="view-nav">
		<div class="view">
			<p>
				<a href="plan">View Plan</a>
		</div>
		<div class="view">
			<p>
				<a href="generateplan/${city}">Generate Plan</a>
			</p>
		</div>
	</div>

	<c:set var="location" value="Aguada Fort"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Fort_Aguada?wprov=srpw1_0"
				target="_blank"><img alt="Aguada Fort"
				src="images/goa/aguada.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Aguada Fort</h1></li>
				<li><p>Fort Aguada is a well-preserved seventeenth-century
						Portuguese fort, along with a lighthouse, standing in Goa, India,
						on Sinquerim Beach, overlooking the Arabian Sea.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 1:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Anjuna Beach"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Anjuna#Anjuna_Beach"
				target="_blank"><img alt="Anjuna Beach"
				src="images/goa/anjuna.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Anjuna Beach</h1></li>
				<li><p>Anjuna is a beautiful beach with amazing shacks.Good
						beach, less crowded than the Baga beach. But you need to walk a
						lot inside to enjoy the beach.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 3:00 AM to 6:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Baga Beach"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Baga,_Goa" target="_blank"><img
				alt="Baga Beach" src="images/goa/baga.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Baga Beach</h1></li>
				<li><p>Baga Beach is undoubtedly among the best beaches in
						India.The long stretch of sandy beach is amazing. You can rent a
						reclining chair with umbrella for a cheap price</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Restaurants and Hotels Available nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 6:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Chapora Fort"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Chapora_Fort" target="_blank"><img
				alt="Chapora Fort" src="images/goa/chapora.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Chapora Fort</h1></li>
				<li><p>Chapora Fort, located in Bardez, Goa, rises high
						above the Chapora River. The site was the location of a fort built
						by Muslim ruler Adil Shah called Shahpura, whose name the
						Portuguese altered to Chapora.</p></li>
				<li><p>Accessible by road. Road stops one kilometer from
						the fort</p></li>
				<li><p>Small Hotels Available nearby. Plan your trip
						accordingly</p></li>
				<li><p>Best viewed from 10:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Dudhsagar Falls"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Dudhsagar_Falls"
				target="_blank"><img alt="Chapora Fort"
				src="images/goa/dudhsagar.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Dudhsagar Water Falls</h1></li>
				<li><p>Dudhsagar Falls is a four-tiered waterfall located
						on the Mandovi River in the Indian state of Goa. It is 60 km from
						Panaji by road and is located on the Madgaon-Belagavi rail route
						about 46 km east of Madgaon and 80 km south of Belagavi.</p></li>
				<li><p>Trekking. All vehicles stop 4 kilometers from the
						falls</p></li>
				<li><p>Small Hotels Available nearby. Plan your trip
						accordingly</p></li>
				<li><p>Best viewed from 10:00 AM to 2:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<!-- Body section of the page ends -->

	<hr>

	<div class="title">TRENDING NOW !</div>
	<div class="trending">
		<div class="col1">
			<a href="madurai"><img alt="Madurai"
				src="images/cities/madurai.jpg" class="fig"></a>
			<div class="text">
				<b>Madurai</b>
			</div>
		</div>
		<div class="col1">
			<a href="manali"><img alt="Manali" src="images/cities/manali.jpg"
				class="fig"></a>
			<div class="text">
				<b>Manali</b>
			</div>
		</div>
		<div class="col1">
			<a href="ooty"><img alt="Ooty" src="images/cities/ooty.jpg"
				class="fig"></a>
			<div class="text">
				<b>Ooty</b>
			</div>
		</div>
	</div>


	<hr>

	<div class="title">EXPECTED ARRIVALS !</div>
	<div class="arriving">
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Agra" target="_blank"><img
				alt="Agra" src="images/arriving/agra.jpg" class="fig"></a>
			<div class="text">
				<b>Agra</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Andaman_Islands"
				target="_blank"><img alt="Andaman"
				src="images/arriving/andaman.jpg" class="fig"></a>
			<div class="text">
				<b>Andaman</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/France" target="_blank"><img
				alt="France" src="images/arriving/france.jpg" class="fig"></a>
			<div class="text">
				<b>France</b>
			</div>
		</div>
	</div>





	<div class="footer">
		<div class="container">
			<div class="row">

				<div class="column left">
					<h6>ABOUT</h6>
					<p class="about">Holiday Planner is an amazing application that
						allows you to plan your holiday perfectly. It helps catering in a
						plan that suits your budget and time. With Holiday Planner, go on
						an amazing journey and explore lands that are both far and near.
						However, this is just a pilot version of the application and so
						the actual number of cities and days are restricted. Along the
						stream of time, you can plan for longer and bigger exotic trips.</p>
				</div>

				<div class="column middle">
					<h6>QUICK LINKS</h6>
					<ul class="links1">
						<li><a href="home">Holiday Planner</a></li>
						<li><a href="home-testimonial">Testimonial</a></li>
						<li><a href="login">Login</a></li>
						<li><a href="home-register">Sign up</a></li>
						<li><a href="home-help">FAQ</a></li>
						<li><a href="home-help">Help</a></li>
					</ul>
				</div>

				<div class="column right">
					<h6>CONTACT US</h6>
					<ul class="links1">
						<li><a href="home-contact">About us</a></li>
						<li><a href="home-contact">Contact us</a></li>
						<li><a href="home-contact">Queries</a></li>
					</ul>
				</div>

			</div>

		</div>
	</div>

	<div class="copy-column">
		<p class="about1">
			Copyright &copy; 2020 All Rights Reserved by <a href="main">Holiday
				Planner</a>
		</p>
	</div>
</body>
</html>