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
						<h1 class="title">
							<?php if(isset($_GET['e'])):?>
								<?=$_GET['e'];?>
							<?php else:?>						
								Something went wrong!
							<?php endif;?>
						</h1>
						<h4>
							<?php if(isset($_GET['desc'])):?>
								<?=$_GET['desc'];?>
							<?php else:?>
								You were trying to do something and the system could not process it. Please try again later.
							<?php endif;?>
						</h4>
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
