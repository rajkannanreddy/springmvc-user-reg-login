<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Roboto:400,700"
	rel="stylesheet">
<title>Sign Up</title>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/xenoai-signup.css">
<link rel="stylesheet" href="${css}/home.css">
<script src="${js}/jquery.min.js" type="text/javascript"></script>
<script src="${js}/bootstrap.bundle.min.js" type="text/javascript"></script>

</head>
<body>
	<header id="header">
		<div class="container">

			<div class="logo float-left">

				<!-- Uncomment below if you prefer to use an image logo -->
				<a href="home.jsp"><img src="resources/images/xenoai.jpg" alt=""
					class="img-fluid"></a>
			</div>

			<nav class="nav-menu float-left d-none d-lg-block">
				<ul>
					<li><a href="#about">Products</a></li>
					<li><a href="#services">Solutions</a></li>
					<li><a href="#team">Resources</a></li>
					<li><a href="#portfolio">Pricing</a></li>
				</ul>
			</nav>
			<nav class="nav-menu float-right d-none d-lg-block">
				<ul>
					<li><c:choose>
							<c:when test="${not empty username}">
								<a href="login">LogOut</a>
							</c:when>
							<c:otherwise>
								<a href="login">Log In</a>
							</c:otherwise>
						</c:choose></li>
				</ul>
			</nav>
			<!-- .nav-menu -->

		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container">
				<div class="row no-gutters">Welcome ${username}</div>
			</div>
		</section>
		<!-- End About Us Section -->
	</main>

	<!-- ======= Footer ======= -->
	<footer id="footer">
		<div class="container">
			<ul class="nav">
				<li class="nav-item">
					<div class="copyright" style="padding-right: 30px" row="">
						© Copyright <strong><span>Xenoai</span></strong>. All Rights
						Reserved
					</div>
				</li>
				<li class="nav-item">
					<div class="copyright" style="padding-right: 5px;" row="">
						<a style="color: #fff;" href="#">Contact</a>
					</div>
				</li>
				<li class="nav-item">
					<div class="copyright" style="padding-right: 5px;" row="">|</div>
				</li>

				<li class="nav-item">
					<div class="copyright" style="padding-right: 5px;" row="">
						<a style="color: #fff;" href="#">Privacy policy</a>
					</div>
				</li>
				<li class="nav-item">
					<div class="copyright" style="padding-right: 5px;" row="">|</div>
				</li>
				<li class="nav-item">
					<div class="copyright" row="">
						<a style="color: #fff;" href="#">Terms of service</a>
					</div>
				</li>
			</ul>
		</div>
	</footer>
	<!-- End Footer -->

</body>
</html>
