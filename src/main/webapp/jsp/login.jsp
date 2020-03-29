<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Log In</title>
<spring:url value="/resources/css" var="css" />
<spring:url value="/resources/js" var="js" />

<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="${css}/bootstrap.min.css">
<link rel="stylesheet" href="${css}/xenoai-login.css">
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

				<div class="login-form" style="min-height:73vh">
					<form id="loginForm" modelAttribute="login" action="loginProcess"
						method="post">
						<div class="avatar">
							<i class="material-icons">&#xE7FF;</i>
						</div>
						<h4 class="modal-title">Sign in to Xenoai</h4>
						<c:if test="${not empty message}">
						    <div class="alert alert-danger" role="alert">${message}</div>
						</c:if>
						<div class="form-group">

							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-user"></i></span>
								</div>
								<input type="text" class="form-control" name="username" placeholder="User Name"
									required="required">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group mb-3">
								<div class="input-group-prepend">
									<span class="input-group-text"><i class="fa fa-lock"></i></span>
								</div>
								<input type="password" class="form-control" name="password"
									placeholder="Password" required="required">
							</div>
						</div>
						<div class="form-group small clearfix">
							<label class="checkbox-inline"><input type="checkbox">
								Remember me</label> <a href="/password_reset" class="forgot-link">Forgot
								Password?</a>
						</div>
						<input type="submit" class="btn btn-primary btn-block btn-lg"
							value="Sign In">
					</form>
					<div class="text-center small">
						New User? <a href="register">Create an account</a>
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
