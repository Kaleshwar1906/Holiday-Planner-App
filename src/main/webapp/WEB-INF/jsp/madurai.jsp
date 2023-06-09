<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/madurai.css">
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
			<h1>MADURAI</h1>
			<h4>The Temple City</h4>
		</div>
	</div>



	<!-- Body section of the page starts -->
	<c:set var="city" value="madurai"></c:set>
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

	<c:set var="city" value="madurai"></c:set>
	<c:set var="location" value="Alagar Koyil and Pazhamudhircholai"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Azhagar_temple"
				target="_blank"><img alt="Alagar Koyil and Pazhamudhircholai"
				src="images/madurai/alagar.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Alagar Koyil and Pazhamudhircholai</h1></li>
				<li><p>Kallazhagar Temple in Alagar Koyil, a village in the
						South Indian state of Tamil Nadu, is dedicated to the Hindu god
						Vishnu.</p></li>
				<li><p>Hotels Available nearby</p></li>
				<li><p>Best viewed from 8:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Gandhi Museum"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Gandhi_museum,_madurai"
				target="_blank"><img alt="Gandhi Museum"
				src="images/madurai/gandhi.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Gandhi Museum</h1></li>
				<li><p>Gandhi Memorial Museum, established in 1959, is a
						memorial museum for Gandhi located in the city of Madurai in Tamil
						Nadu, India. Known as Gandhi Museum, it is now one of the five
						Gandhi Sanghralayas in the country</p></li>
				<li><p>Best viewed from 10:00 AM to 4:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Meenakshi Amman Temple"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Meenakshi_Temple"
				target="_blank"><img alt="Meenakshi Amman Temple"
				src="images/madurai/meenakshi.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Meenakshi Amman Temple</h1></li>
				<li><p>Meenakshi Temple, is a historic Hindu temple located
						on the southern bank of the Vaigai River in the temple city of
						Madurai, Tamil Nadu, India. It is dedicated to Meenakshi, a form
						of Parvati, and her consort, Sundareshwar, a form of Shiva.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Hotels and Stalls Available nearby. All kinds of
						shops available around the temple</p></li>
				<li><p>Best viewed from 8:00 AM to 12:00 PM IST</p></li>
				<li><p>
						<a href="plan/${city}/${location}">Add Location</a>
					</p></li>
			</ul>
		</div>
	</div>

	<c:set var="location" value="Thirumalai Nayakkar Palace"></c:set>

	<div class="loc">
		<div class="column1">
			<a href="https://en.wikipedia.org/wiki/Thirumalai_Nayakkar_Mahal"
				target="_blank"><img alt="Thirumalai Nayakkar Palace"
				src="images/madurai/thirumalai.jpg" class="fig"></a>
		</div>
		<div class="column2">
			<ul style="list-style-type: none;">
				<li><h1>Thirumalai Nayakkar Palace</h1></li>
				<li><p>Thirumalai Nayak Palace is a 17th-century palace
						erected in 1636 AD by King Tirumala Nayaka, a king of Madurai's
						Nayaka dynasty who ruled Madurai from 1623–59, in the city of
						Madurai, India. This Palace is a classic fusion of Dravidian and
						Rajput styles.</p></li>
				<li><p>Accessible by road</p></li>
				<li><p>Restaurants and Hotels available</p></li>
				<li><p>Best viewed from 9:00 AM to 7:00 PM IST</p></li>
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
			<a href="manali"><img alt="Manali" src="images/cities/manali.jpg"
				class="fig"></a>
			<div class="text">
				<b>Manali</b>
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
			<a href="https://en.wikipedia.org/wiki/Hawaii" target="_blank"><img
				alt="Hawaii" src="images/arriving/hawaii.jpg" class="fig"></a>
			<div class="text">
				<b>Hawaii</b>
			</div>
		</div>
		<div class="col1">
			<a href="https://en.wikipedia.org/wiki/Munnar" target="_blank"><img
				alt="Munnar" src="images/arriving/munnar.jpg" class="fig"></a>
			<div class="text">
				<b>Munnar</b>
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