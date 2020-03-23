<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
				<a href="home.jsp"><img src="resources/images/xenoai.jpg"
					alt="" class="img-fluid"></a>
			</div>
		</div>
	</header>
	<!-- End Header -->

	<main id="main">

		<!-- ======= About Us Section ======= -->
		<section id="about" class="about">
			<div class="container">
				<div class="signup-form">
					<form id="regForm" modelAttribute="user" action="registerProcess"
						method="post">
						<h2>Sign Up</h2>
						<p>Please fill in this form to create an account!</p>
						<hr>
						<div class="form-group">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-user"></i></span>
								</div>
								<input type="text" class="form-control" name="username"
									placeholder="Username" required="required">
							</div>
						</div>
						<div class="form-group">

							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i
										class="fa fa-paper-plane"></i></span>
								</div>
								<input type="email" class="form-control" name="email"
									placeholder="Email Address" required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-lock"></i></span>
								</div>
								<input type="text" class="form-control" name="password"
									placeholder="Password" required="required">
							</div>
						</div>
						<div class="form-group">

							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-lock"></i>
										<i class="fa fa-check"></i><i></i></span>
								</div>
								<input type="text" class="form-control" name="confirm_password"
									placeholder="Confirm Password" required="required">
							</div>
						</div>
						<div class="form-group">
							<label class="checkbox-inline"><input type="checkbox"
								required="required"> I accept the <a href="#">Terms
									of Use</a> &amp; <a href="#">Privacy Policy</a></label>
						</div>
						<div class="form-group">
							<button type="submit" class="btn btn-primary btn-lg">Sign
								Up</button>
						</div>
					</form>
					<div class="text-center">
						Already have an account? <a href="login">Login here</a>
					</div>
				</div>
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
						<a style="color: #fff;" href="#">Privacy
							policy</a>
					</div>
				</li>
				<li class="nav-item">
					<div class="copyright" style="padding-right: 5px;" row="">|</div>
				</li>
				<li class="nav-item">
					<div class="copyright" row="">
						<a style="color: #fff;" href="#">Terms of
							service</a>
					</div>
				</li>
			</ul>
		</div>
	</footer>
	<!-- End Footer -->

</body>
</html>
