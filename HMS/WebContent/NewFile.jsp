<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home | Hardware Management System</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">


<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>

</head>
<body style="background-color: #E9ECEF">

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">H.M.System</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.jsp">Home</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Company <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="AddMain.jsp">Main Company</a></li>
						<li><a href="#">Sub Company</a></li>
						<li><a href="#">Branches</a></li>
					</ul></li>
				<li><a href="#">Page 2</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="#"><span class="glyphicon glyphicon-user"></span>
						Sign Up</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						Login</a></li>
			</ul>
			<form class="navbar-form navbar-right" action="/action_page.php">
				<div class="input-group">
					<input type="text" class="form-control" placeholder="Search"
						name="search">
					<div class="input-group-btn">
						<button class="btn btn-default" type="submit">
							<i class="glyphicon glyphicon-search"></i>
						</button>
					</div>
				</div>
			</form>


		</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<h2>Automatic Slideshow</h2>
				<p>Change image every 2 seconds:</p>

				<div class="slideshow-container">

					<div class="mySlides fade">
						<div class="numbertext">1 / 3</div>
						<img src="pic/la.jpg" style="width: 100%">
						<div class="text">Caption Text</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">2 / 3</div>
						<img src="pic/chicago.jpg" style="width: 100%">
						<div class="text">Caption Two</div>
					</div>

					<div class="mySlides fade">
						<div class="numbertext">3 / 3</div>
						<img src="pic/ny.jpg" style="width: 100%">
						<div class="text">Caption Three</div>
					</div>

				</div>
				<br>

				<div style="text-align: center">
					<span class="dot"></span> <span class="dot"></span> <span
						class="dot"></span>
				</div>

				<script>
					var slideIndex = 0;
					showSlides();

					function showSlides() {
						var i;
						var slides = document
								.getElementsByClassName("mySlides");
						var dots = document.getElementsByClassName("dot");
						for (i = 0; i < slides.length; i++) {
							slides[i].style.display = "none";
						}
						slideIndex++;
						if (slideIndex > slides.length) {
							slideIndex = 1
						}
						for (i = 0; i < dots.length; i++) {
							dots[i].className = dots[i].className.replace(
									" active", "");
						}
						slides[slideIndex - 1].style.display = "block";
						dots[slideIndex - 1].className += " active";
						setTimeout(showSlides, 2000); // Change image every 2 seconds
					}
				</script>
			</div>
		</div>
	</div>
</body>
</html>
