<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/agency.css">
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
					<a href="home-testimonial">TESTIMONIALS</a>
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
			<h1>TOURIST AGENCIES</h1>
			<h4>They Provide An Organized Trip</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->

	<div class="view-nav">
		<div class="view">
			<p>
				<a href="planpage">View Plan</a>
		</div>
	</div>

	<c:set var="agency" value="Agency A"></c:set>

	<div class="loc">
		<div class="column1">
			<img alt="Agency" src="images/icons/bus1.png" class="fig">
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Agency A</h1></li>
				<li><p>Cost: 3 Rs per kilometer per head-</p></li>
				<li><p>Bookings Available</p></li>
				<li><p>Free Refreshments, Free Wifi, AC</p></li>
				<li><p>
						<a href="/plan/${agency}/agency">Select Agency</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="agency" value="Agency B"></c:set>

	<div class="loc">
		<div class="column1">
			<img alt="Agency" src="images/icons/bus2.png" class="fig">
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Agency B</h1></li>
				<li><p>Cost: 2 Rs per kilometer per head -</p></li>
				<li><p>Booking Available</p></li>
				<li><p>Free Refreshments, AC</p></li>
				<li><p>
						<a href="/plan/${agency}/agency">Select Agency</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="agency" value="Agency C"></c:set>

	<div class="loc">
		<div class="column1">
			<img alt="Agency" src="images/icons/bus3.png" class="fig">
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Agency C</h1></li>
				<li><p>: Cost: 1 Rs per kilometer per head -</p></li>
				<li><p>Bookings Available</p></li>
				<li><p>Free Refreshments</p></li>
				<li><p>
						<a href="/plan/${agency}/agency">Select Agency</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="agency" value="None"></c:set>

	<div class="loc">
		<div class="column1">
			<img alt="Agency" src="images/icons/help.png" class="fig">
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>None</h1></li>
				<li><p>: Cost: Not Available -</p></li>
				<li><p>Bookings Unavailable</p></li>
				<li><p>Select this to unselect an agency</p></li>
				<li><p>
						<a href="/plan/${agency}/agency">Select Agency</a>
					</p></li>
			</ul>
		</div>
	</div>


	<!-- Body section of the page ends -->


	<hr>

	<div class="title">TRENDING NOW !</div>
	<div class="trending">
		<div class="col1">
			<a href="manali"><img alt="Manali" src="images/cities/manali.jpg"
				class="fig"></a>
			<div class="text">
				<b>Manali</b>
			</div>
		</div>
		<div class="col1">
			<a href="goa"><img alt="Goa" src="images/cities/goa.jpg"
				class="fig"></a>
			<div class="text">
				<b>Goa</b>
			</div>
		</div>
		<div class="col1">
			<a href="madurai"><img alt="Madurai"
				src="images/cities/madurai.jpg" class="fig"></a>
			<div class="text">
				<b>Madurai</b>
			</div>
		</div>
	</div>


	<hr>

	<div class="title">EXPECTED ARRIVALS !</div>
	<div class="arriving">
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Kedarnath" target="_blank"><img
				alt="Kedarnath" src="images/arriving/kedarnath.jpg" class="fig"></a>
			<div class="text">
				<b>Kedarnath</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Agra" target="_blank"><img
				alt="Agra" src="images/arriving/agra.jpg" class="fig"></a>
			<div class="text">
				<b>Agra</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Kodaikanal" target="_blank"><img
				alt="Kodaikanal" src="images/arriving/kodaikanal.jpg" class="fig"></a>
			<div class="text">
				<b>Kodaikanal</b>
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
						<li><a href="register">Sign up</a></li>
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