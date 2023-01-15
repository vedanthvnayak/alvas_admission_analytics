<!DOCTYPE html>
<html>

<head>
	<title>Contact Us page</title>
	<link rel="stylesheet"
		href="styles.css">
</head>
<style>
    * {
	margin: 0;
	padding: 0;
}

html {
	scroll-behaviour: smooth;
}

:root {
	--navbar-height: 59px;
}

.logo {
	width: 20%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.logo img {
	width: 33%;
	border: 2px solid white;
	border-radius: 50px;
}

.navbar {
	display: flex;
	align-items: center;
	justify-content: center;
	position: sticky;
	top: 0;
	cursor: pointer;
}

.nav-list {
	width: 70%;
	display: flex;
}

.nav-list li {
	list-style: none;
	padding: 2px 6px;
}

.nav-list li a {
	text-decoration: none;
	color: white;
}

.nav-list li a:hover {
	color: grey;
}

.rightNav {
	width: 50;
	text-align: right;
}

#search {
	padding: 5px;
	font-size: 17px;
	border: 2px solid grey;
	border-radius: 9px;
}

.background {
	background-color: grey;
	background-blend-mode: darken;
	background-size: cover;
}

.firstsection {
	height: 100vh;
}

.box-main {
	display: flex;
	justify-content: center;
	align-items: center;
	color: white;
	max-width: 50%;
	margin: auto;
	height: 80%;
}

.firstHalf {
	width: 75%;
	display: flex;
	flex-direction: column;
	justify-content: center;
}

.firstHalf img {
	display: flex;
	border-radius: 9050px;
}

.text-big {
	font-family: "Piazzolla", serif;
	font-weight: bold;
	font-size: 41px;
	text-align: center;
}

.text-small {
	font-family: "Sansita Swashed", cursive;
	font-size: 18px;
	text-align: center;
}

#service {
	margin: 34px;
	display: flex;
}

#service .box {
	padding: 45px;
	margin: 3px 6px;
	border-radius: 28px;
}

#service .box img {
	margin-top: 20px;
	height: 100px;
	margin: auto;
	display: block;
	border-radius: 200px;
}

#service .box p {
	font-family: sans-serif;
	text-align: center;
}

.btn {
	padding: 8px 20px;
	margin: 7px 0;
	border: 2px solid white;
	border-radius: 8px;
	background: none;
	color: white;
	cursor: pointer;
}

.btn-sm {
	padding: 6px 10px;
	vertical-align: middle;
}

.center {
	text-align: center;
}

.text-footer {
	text-align: center;
	padding: 30px 0;
	font-family: "Ubuntu", sans-serif;
	display: flex;
	justify-content: center;
}

</style>
<body>
<?php include("navbar.html");?>

	
	<section class="service">
		
		<!-- Heading-->
		<h1 class="h-primary center"
			style="margin-top:30px;">
			Options to Contact
		</h1>
		<div id="service">
			<div class="box">
				<!-- Form -->
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20211220070335/color.png"
					alt= "color_image">
				<br>
				
				<!-- Displaying text at
					the center of the box-->
				<p class="center">
					People can fill up the form and send us the problem
				</p>

			</div>
			<div class="box">
				
				<!-- Email -->
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20211220070335/color.png"
					alt= "color_image">
				<br>
				
					<!-- Displaying text at
					the center of the box-->
				<p class="center">
					Use this Email to send us about the problem faced
				</p>

			</div>
			<div class="box">
				<img src=
"https://media.geeksforgeeks.org/wp-content/uploads/20211220070335/color.png"
					alt= "color_image">
				<br>
				
				<!-- Displaying text at
					the center of the box-->
				<p class="center">
					Toll Free Number:+1800 200 300 400
				</p>

			</div>
		</div>
	</section>
    <br><br><br><br><br><br><br>
	<footer class="background">
		<p class="text-footer">
			Copyright @-All rights are reserved
		</p>

	</footer>
</body>

</html>
