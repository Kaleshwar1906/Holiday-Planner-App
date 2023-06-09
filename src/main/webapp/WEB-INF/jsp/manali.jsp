<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/manali.css">
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
			<h1>MANALI</h1>
			<h4>Valley Of The Gods</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->
	<c:set var="city" value="manali"></c:set>
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

	<c:set var="city" value="manali"></c:set>
	<c:set var="location" value="Hadimba Temple"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Hidimba_Devi_Temple"
				target="_blank"><img alt="Hadimba Temple"
				src="images/manali/hadimba.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Hadimba Temple</h1></li>
				<li><p>Hidimba Devi Temple, locally known as Dhungari
						Temple, also known variously as the Hadimba Temple, is located in
						Manāli, a hill station in the State of Himāchal Pradesh in north
						India. It is an ancient cave temple dedicated to Hidimbi Devi,
						wife of Bhima, a figure in the Indian epic Mahābhārata.</p></li>
				<li><p>Accessible by road. Roads are rocky</p></li>
				<li><p>Hotels and Restaurants Available nearby</p></li>
				<li><p>Best viewed from 9:00 AM to 3:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Jogini Falls"></c:set>

	<div class="loc">
		<div class="column1">
			<a
				href="https://www.tripoto.com/india/trips/jogini-waterfalls-569345e61377b"
				target="_blank"><img alt="Jogini Falls"
				src="images/manali/jogini.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Jogini Falls</h1></li>
				<li><p>At a distance of 4 Km from Vashisht Temple and 7.5
						Km from Manali Bus Stand, Jogini or Jogni Falls is a beautiful
						waterfall situated near Vashisht Village</p></li>
				<li><p>Accessible by road. Roads are rocky</p></li>
				<li><p>Hotels Not Available. Food restricted in the area</p></li>
				<li><p>Best viewed from 10:00 AM to 2:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Manali Nature Park"></c:set>

	<div class="loc">
		<div class="column1">
			<a
				href="https://www.indianholiday.com/wildlife-india/nature-park-manali.html"
				target="_blank"><img alt="Manali Nature Park"
				src="images/manali/nature.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Manali Nature Park</h1></li>
				<li><p>The Manali Wildlife Sanctuary is a wildlife
						sanctuary in Himachal Pradesh in northern India. The sanctuary
						starts about 2 km from Manali. It is the catchment of Manalsu
						khad. A path from Manali log huts and Dhungri temple passes
						through dense Deodar, Kail, Horse chestnut, Walnut and Maple
						forests</p></li>
				<li><p>Accessible by road.</p></li>
				<li><p>Stalls Available nearby</p></li>
				<li><p>Best viewed from 9:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Van Vihar"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Van_Vihar_National_Park"
				target="_blank"><img alt="Van Vihar"
				src="images/manali/vanvihar.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Van Vihar</h1></li>
				<li><p>Manali Van Vihar also popularly known as the Van
						Vihar National Park. This is the perfect destination of Manali to
						go for picnics, to relax and to enjoy the beauty</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels available</p></li>
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
			<a href="kannyakumari"><img alt="Kannyakumari"
				src="images/cities/kannyakumari.jpg" class="fig"></a>
			<div class="text">
				<b>Kannyakumari</b>
			</div>
		</div>
		<div class="col1">
			<a href="ooty"><img alt="Ooty" src="images/cities/ooty.jpg"
				class="fig"></a>
			<div class="text">
				<b>Ooty</b>
			</div>
		</div>
		<div class="col1">
			<a href="allepey"><img alt="Allepey"
				src="images/cities/allepey.jpg" class="fig"></a>
			<div class="text">
				<b>Allepey</b>
			</div>
		</div>
	</div>


	<hr>

	<div class="title">EXPECTED ARRIVALS !</div>
	<div class="arriving">
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Munnar" target="_blank"><img
				alt="Munnar" src="images/arriving/munnar.jpg" class="fig"></a>
			<div class="text">
				<b>Munnar</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Japan" target="_blank"><img
				alt="Japan" src="images/arriving/japan.jpg" class="fig"></a>
			<div class="text">
				<b>Japan</b>
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