<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/ooty.css">
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
			<h1>OOTY</h1>
			<h4>The Queen Of Hills</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->
	<c:set var="city" value="ooty"></c:set>
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

	<c:set var="city" value="ooty"></c:set>
	<c:set var="location" value="Deer Park"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://ootytourism.co.in/deer-park-ooty" target="_blank"><img
				alt="Deer Park" src="images/ooty/deer.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Deer Park</h1></li>
				<li><p>The Deer Park in Ooty is a place which is one of its
						own kinds and known for being home to a vast number of deer.
						Located at Udhagamandalam town, the name of this itself explains
						very vividly that this place is a perfect location for the
						wildlife lovers who want to admire these innocent species.</p></li>
				<li><p>Accessible by road.</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 3:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Doddabetta Peak"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Doddabetta" target="_blank"><img
				alt="Doddabetta Peak" src="images/ooty/doddabetta.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Doddabetta Peak</h1></li>
				<li><p>Doddabetta is the highest mountain in the Nilgiri
						Mountains at 2,637 metres. There is a reserved forest area around
						the peak. It is 9 km from Ooty, on the Ooty-Kotagiri Road in the
						Nilgiris District of Tamil Nadu, India. It is a popular tourist
						attraction with road access to the summit</p></li>
				<li><p>Food is prohibited in the area. Only Snacks allowed</p></li>
				<li><p>Best viewed from 7:00 AM to 2:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Ooty Lake"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Ooty_Lake" target="_blank"><img
				alt="Ooty Lake" src="images/ooty/lake.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Ooty Lake</h1></li>
				<li><p>Ooty lake is also called as Ooty boat house is
						located in Ooty in the Nilgiris district and 1 km from ooty bus
						stand., Tamil Nadu, India. It covers an area of 65 acres. The Boat
						house situated by the lake, which offers boating facilities to
						tourists, is a major tourist attraction in Ooty</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels and Restaurants Available nearby</p></li>
				<li><p>Best viewed from 7:00 AM to 6:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Mudhumalai National Park"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Mudumalai_National_Park"
				target="_blank"><img alt="Mudhumalai National Park"
				src="images/ooty/mudhumalai.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Mudhumalai National Park</h1></li>
				<li><p>The Mudumalai National Park and Wildlife Sanctuary
						also a declared tiger reserve, lies on the northwestern side of
						the Nilgiri Hills, in Nilgiri District, about 150 kilometres
						north-west of Coimbatore city in Tamil Nadu, India. It shares its
						boundaries with the states of Karnataka and Kerala.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Food not allowed. But Hotel available inside</p></li>
				<li><p>Best viewed from 9:00 AM to 2:00 PM IST</p></li>
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
			<a href="kannyakumari"><img alt="Kannyakumari"
				src="images/cities/kannyakumari.jpg" class="fig"></a>
			<div class="text">
				<b>Kannyakumari</b>
			</div>
		</div>
		<div class="col1">
			<a href="goa"><img alt="Goa" src="images/cities/goa.jpg"
				class="fig"></a>
			<div class="text">
				<b>Goa</b>
			</div>
		</div>
	</div>


	<hr>

	<div class="title">EXPECTED ARRIVALS !</div>
	<div class="arriving">
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Kashmir" target="_blank"><img
				alt="Kashmir" src="images/arriving/kashmir.jpg" class="fig"></a>
			<div class="text">
				<b>Kashmir</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Spain" target="_blank"><img
				alt="Spain" src="images/arriving/spain.jpg" class="fig"></a>
			<div class="text">
				<b>Spain</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Egypt" target="_blank"><img
				alt="Egypt" src="images/arriving/egypt.jpg" class="fig"></a>
			<div class="text">
				<b>Egypt</b>
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
						<li><a href="home--contact">Queries</a></li>
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