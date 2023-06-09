<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/allepey.css">
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
			<h1>ALLEPEY</h1>
			<h4>Venice Of the East</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->

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

	<c:set var="location" value="Alappuzha Beach"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Alappuzha_Beach"
				target="_blank"><img alt="Alappuzha Beach"
				src="images/allepey/beach.jpeg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Alappuzha Beach</h1></li>
				<li><p>Alappuzha Beach is a beach in Alappuzha town and a
						tourist attraction in Kerala, India. Beach has an old pier which
						extend to sea is over 150 years old.</p></li>
				<li><p>Accessible by road and sea</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 4:00 PM to 7:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Backwater Boating (Boat House Adventures)"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Alappuzha" target="_blank"><img
				alt="Backwater Boating" src="images/allepey/boat.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Backwater Boating (Boat House Adventures)</h1></li>
				<li><p>The city is not called the Venice of the East for
						nothing. The city is spread over the backwaters. Houseboats have
						been a treat to travel since long. Enjoy the calm sea with the
						choice of choosing budget to luxurious boats.</p></li>
				<li><p>Accessible by road and sea</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 5:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Pathiramanal Island"></c:set>
	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Pathiramanal" target="_blank"><img
				alt="Pathiramanal Island" src="images/allepey/pathiramanal.jpg"
				class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Pathiramanal Island</h1></li>
				<li><p>Pathiramanal is a small island inMuhamma panchayat
						of Alappuzha district. The name Pathiramanal means 'midnight
						sand'. The scenic beauty of both sides of the lake as well as that
						of the island is mind blowing. It is home to many rare varieties
						of migratory birds from different parts of the world.</p></li>
				<li><p>Accessible by sea</p></li>
				<li><p>Hotels Not Available nearby. Plan your trip
						accordingly</p></li>
				<li><p>Best viewed from 9:00 AM to 1:00 PM IST</p></li>
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