<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}

	require 'app/profile.php';
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Resume Maker | Profile Page</title>

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

<body class="profile-page">
	<?php require_once 'layouts/navbar.php';?>

    <div class="wrapper">
		<div class="header header-filter" style="background-image: url('assets/img/examples/city.jpg');"></div>

		<div class="main main-raised">
			<div class="profile-content">
	            <div class="container">
	                <div class="row">
	                    <div class="profile">
	                        <div class="avatar">
	                            <img src="<?=$response['user']['profile_pic'];?>" alt="Circle Image" class="img-circle img-responsive img-raised" style="background: #fff;">
	                        </div>
	                        <div class="name">
	                            <h3 class="title"><?=$response['user']['name'];?></h3>
								<h6><?=$response['experience'][0]['title'];?></h6>
	                        </div>
	                    </div>
	                </div>
	                <div class="description text-center">
                        <p><?=$response['user']['description'];?></p>
	                </div>

					<div class="row">
						<div class="col-md-6 col-md-offset-3">
							<div class="profile-tabs">
			                    <div class="nav-align-center">
									<ul class="nav nav-pills" role="tablist">
										<li class="active">
				                            <a href="#personal" role="tab" data-toggle="tab">
												<i class="material-icons">account_circle</i>
				                                Basic
				                            </a>
				                        </li>
				                        <li>
				                            <a href="#qualification" role="tab" data-toggle="tab">
												<i class="material-icons">account_balance</i>
				                                Qualifications
				                            </a>
				                        </li>
										<li>
											<a href="#work" role="tab" data-toggle="tab">
												<i class="material-icons">work</i>
												Job Exp
											</a>
										</li>
										<li>
				                            <a href="#skills" role="tab" data-toggle="tab">
												<i class="material-icons">sort</i>
												Skills
				                            </a>
				                        </li>
				                    </ul>

				                    <div class="tab-content gallery">
										<div class="tab-pane active" id="personal">
				                            <div class="row">
				                            	<div class="col-md-offset-1 col-md-10">
				                            		<div class="card">
					                            		<div class="row">
					                            			<div class="col-md-3 center-align">
																<h4 class="material-icons">phone</h4>
															</div>
															<div class="col-md-6">
																<h4><?=$response['user']['phone'];?></h4>
															</div>
					                            		</div>	
				                            		</div>
				                            	</div>
				                            </div>
				                        </div>
				                        <div class="tab-pane text-center" id="qualification">
											<div class="row">
												<div class="col-md-6">
													<img src="assets/img/examples/chris5.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris7.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris9.jpg" class="img-rounded" />
												</div>
												<div class="col-md-6">
													<img src="assets/img/examples/chris6.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris8.jpg" class="img-rounded" />
												</div>
											</div>
				                        </div>
										<div class="tab-pane text-center" id="work">
											<div class="row">
												<div class="col-md-6">
													<img src="assets/img/examples/chris4.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris6.jpg" class="img-rounded" />
												</div>
												<div class="col-md-6">
													<img src="assets/img/examples/chris7.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris5.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris9.jpg" class="img-rounded" />
												</div>
											</div>
				                        </div>
				                        <div class="tab-pane text-center" id="skills">
											<div class="row">
												<div class="col-md-6">
													<img src="assets/img/examples/chris4.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris6.jpg" class="img-rounded" />
												</div>
												<div class="col-md-6">
													<img src="assets/img/examples/chris7.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris5.jpg" class="img-rounded" />
													<img src="assets/img/examples/chris9.jpg" class="img-rounded" />
												</div>
											</div>
				                        </div>
				                    </div>
								</div>
							</div>
							<!-- End Profile Tabs -->
						</div>
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

</html>
