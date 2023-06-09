<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/kannyakumari.css">
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
			<h1>KANNYAKUMARI</h1>
			<h4>The Tip Of The Peninsula</h4>
		</div>
	</div>

	<!-- Body section of the page starts -->
	<c:set var="city" value="kannyakumari"></c:set>
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

	<c:set var="city" value="kannyakumari"></c:set>
	<c:set var="location"
		value="Gandhi Mandapam, Beach and Bhagavathi Temple"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Devi_Kanya_Kumari"
				target="_blank"><img alt="Gandhi Mandapam"
				src="images/kannyakumari/gandhik.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Gandhi Mandapam, Beach and Bhagavathi Temple</h1></li>
				<li><p>Pink memorial building with sea views on site where
						Gandhi's ashes were held after his death. Ornate temple &
						pilgrimage site, dating back thousands of years, dedicated to
						Hindu goddess Kumari.</p></li>
				<li><p>Accessible by road. Transportation stops 1 kilometer
						away from the beach</p></li>
				<li><p>Hotels and Restaurants Available nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 7:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Vivekanda Rock and Thiruvalluvar Statue"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Vivekananda_Rock_Memorial"
				target="_blank"><img
				alt="Vivekanda Rock and Thiruvalluvar Statue"
				src="images/kannyakumari/vivekananda.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Vivekanda Rock and Thiruvalluvar Statue</h1></li>
				<li><p>Vivekananda Rock Memorial is a popular tourist
						monument in Vavathurai, Kanyakumari, India. It was built in 1970
						in honour of Swami Vivekananda who is said to have attained
						enlightenment on the rock. The Thiruvalluvar Statue, or the
						Valluvar Statue, is a 133-feet (40.6 m) tall stone sculpture of
						the Tamil poet and philosopher Valluvar, author of the Tirukkural,</p></li>
				<li><p>Hotels Available on land nearby</p></li>
				<li><p>Best viewed from 10:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Thiruparappu Falls and Suseendram Temple"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Thiruparappu" target="_blank"><img
				alt="Thiruparappu Falls and Suseendram Temple"
				src="images/kannyakumari/thiruparappu.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Thiruparappu Falls and Suseendram Temple</h1></li>
				<li><p>Tirparappu Waterfalls are located in Kanyakumari
						district, Tamil Nadu state, India. The Kodayar River makes its
						descent at Thiruparappu. The water fall at this place is about 13
						kilometres from Pechiparai Dam. It is just a 15 min drive from the
						waterfalls. The riverbed is rocky and about 300 feet in length.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels Available nearby. Kerala food tastes good
						here</p></li>
				<li><p>Best viewed from 9:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Baywatch Theme Park and Wax Museum"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="http://www.baywatchpark.in/" target="_blank"><img
				alt="Baywatch Theme Park and Wax Museum"
				src="images/kannyakumari/baywatch.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Baywatch Theme Park and Wax Museum</h1></li>
				<li><p>Family-friendly park with kids' water slides, wave
						pools & rides like trains & bumper cars.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Restaurant available inside the theme park</p></li>
				<li><p>Best viewed from 9:00 AM to 4:00 PM IST</p></li>
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
			<a href="goa"><img alt="Goa" src="images/cities/goa.jpg"
				class="fig"></a>
			<div class="text">
				<b>Goa</b>
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
			<a href="https://en.wikipedia.org/wiki/Vagamon" target="_blank"><img
				alt="Vagamon" src="images/arriving/vagamon.jpg" class="fig"></a>
			<div class="text">
				<b>Vagamon</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Kodaikanal" target="_blank"><img
				alt="Kodaikanal" src="images/arriving/kodaikanal.jpg" class="fig"></a>
			<div class="text">
				<b>Kodaikanal</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Japan" target="_blank"><img
				alt="Japan" src="images/arriving/japan.jpg" class="fig"></a>
			<div class="text">
				<b>Japan</b>
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