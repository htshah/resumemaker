<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Resume Maker | Create your first impression with perfect, professional resumes.</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/material-kit.css" rel="stylesheet"/>
	<link href="assets/css/style.css" rel="stylesheet"/>

</head>

<body class="landing-page">
	<?php include 'layouts/navbar.php'; ?>

	<div class="wrapper">
		<div class="header header-filter" style="background-image: url('https://images.unsplash.com/photo-1423655156442-ccc11daa4e99?crop=entropy&dpr=2&fit=crop&fm=jpg&h=750&ixjsv=2.1.0&ixlib=rb-0.3.5&q=50&w=1450');">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
						<h1 class="title">Great resumes earn great jobs!</h1>
						<h4>Create your first impression with perfect, professional resumes.</h4>
						<br />
						
					</div>
				</div>
			</div>
		</div>

		<div class="main main-raised">
			<div class="container">
				<div class="section text-center section-landing">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<h2 class="title">What we do?</h2>
							<h5 class="description">Using Resume Maker, you can create your resumes in minutes. We provide ready-to-use UI, so you don't have to waste time in trivial things and focus on whats important. We have templates for all of you, no matter cook, coder or cleaner.. </h5>
						</div>
					</div>

					<div class="features">
						<div class="row">
							<div class="col-md-4">
								<div class="info">
									<div class="icon icon-primary">
										<i class="material-icons">done</i>
									</div>
									<h4 class="info-title">Easy to use</h4>
									<p>The user interface is purposefully kept easy so that everyone can use it.</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="info">
									<div class="icon icon-success">
										<i class="material-icons">verified_user</i>
									</div>
									<h4 class="info-title">Secure</h4>
									<p>Create your own personal profile. Apply for jobs only to companies you want, without sharing your identity to anyone.</p>
								</div>
							</div>
							<div class="col-md-4">
								<div class="info">
									<div class="icon icon-danger">
										<i class="material-icons">money_off</i>
									</div>
									<h4 class="info-title">Free of Cost</h4>
									<p>The service is entirely free, and we have no hidden costs that drain your wallets!</p>
								</div>
							</div>
						</div>
					</div>
				</div>

				

			</div>


			<div class="section landing-section">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h2 class="text-center title">Work with us</h2>
						<h4 class="text-center description">We are hiring! If you are confident with you developing skills, drop a mail and we will get back to you.</h4>
						<form class="contact-form">
							<div class="row">
								<div class="col-md-6">
									<div class="form-group label-floating">
										<label class="control-label">Your Name</label>
										<input type="text" class="form-control">
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group label-floating">
										<label class="control-label">Your Email</label>
										<input type="email" class="form-control">
									</div>
								</div>
							</div>

							<div class="form-group label-floating">
								<label class="control-label">Your Messge</label>
								<textarea class="form-control" rows="4"></textarea>
							</div>

							<div class="row">
								<div class="col-md-4 col-md-offset-4 text-center">
									<button class="btn btn-primary btn-raised">
										Send Message
									</button>
								</div>
							</div>
						</form>
					</div>
				</div>

			</div>
		</div>

	</div>

	<?php require_once 'layouts/footer.php';?>
</body>

<!--   Core JS Files   -->
<script src="assets/js/jquery.min.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/js/material.min.js"></script>

<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="assets/js/nouislider.min.js" type="text/javascript"></script>

<!--  Plugin for the Datepicker, full documentation here: http://www.eyecon.ro/bootstrap-datepicker/ -->
<script src="assets/js/bootstrap-datepicker.js" type="text/javascript"></script>

<!-- Control Center for Material Kit: activating the ripples, parallax effects, scripts from the example pages etc -->
<script src="assets/js/material-kit.js" type="text/javascript"></script>

<script src="assets/js/common.js" type="text/javascript">
	

</script>

</html>
