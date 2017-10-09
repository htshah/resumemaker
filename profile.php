<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}
	if(!existsGet(['id'])){
		die("<script>window.location='/resumemaker';</script>");
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
	                            <?php if(count($response['experience'])> 0):?>
									<h6><?=$response['experience'][0]['title'];?></h6>
								<?php else:?>
									<h6>Newbiee</h6>
								<?php endif;?>
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
				                            	<div class="col-md-offset-2 col-md-8">
				                            		<div class="card">
				                            			<div class="header header-primary text-center">
				                            				<h4>Basic Profile</h4>
				                            				<div class="header-description"><?=$response['user']['name'];?></div>
				                            			</div>
				                            			<div class="content">
						                            		<div class="row">
						                            			<div class="col-md-2 text-center list-icon">
																	<h4 class="material-icons">phone</h4>
																</div>
																<div class="col-md-10 text-left">
																	<h4 class="list-content"><?=$response['user']['phone'];?></h4>
																</div>
						                            		</div>
						                            		<div class="row">
						                            			<div class="col-md-2 text-center list-icon">
																	<h4 class="material-icons">email</h4>
																</div>
																<div class="col-md-10 text-left">
																	<h4 class="list-content"><?=$response['user']['email'];?></h4>
																</div>
						                            		</div>
						                            		<div class="row">
						                            			<div class="col-md-2 text-center list-icon">
																	<h4 class="material-icons">date_range</h4>
																</div>
																<div class="col-md-10 text-left">
																	<h4 class="list-content"><?=$response['user']['dob'];?></h4>
																</div>
						                            		</div>
						                            		<div class="row">
						                            			<div class="col-md-2 text-center list-icon">
																	<h4 class="material-icons">assignment</h4>
																</div>
																<div class="col-md-10 text-left">
																	<h4 class="list-content">About me</h4>
																	<p><?=$response['user']['description'];?></p>
																</div>
						                            		</div>
				                            			</div>
				                            		</div>
				                            	</div>
				                            </div>
				                        </div>
				                        <div class="tab-pane text-center" id="qualification">
											<div class="row" style="position: relative;">
												<div class="timeline"></div>
												<div class="col-md-12 text-center" style="background: #fff;margin-bottom: 20px;">
													<big>Born in <?=end(explode('/',$response['user']['dob']));?></big>
												</div>
												<?php foreach($response['qualifications'] as $qualification):?>
													<div class="col-md-8 col-md-offset-2">
														<div class="card">
															<div class="content">
																<big><?=$qualification['name'];?> from <?=$qualification['institute'];?> in year <?=$qualification['year'];?>
																</big>
															</div>
														</div>
													</div>
												<?php endforeach;?>
											</div>
				                        </div>
										<div class="tab-pane text-center" id="work">
											<div class="row" style="position: relative;">
												<?php if(count($response['experience'])> 0):?>
													<?php foreach($response['experience'] as $experience):?>
														<div class="col-md-8 col-md-offset-2">
															<div class="card">
																<div class="content text-left">
																	<big>As a <b><?=$experience['title'];?></b></big>
																	<p>At <a href="<?=$experience['company_site'];?>" target="_blank"><?=$experience['company']?></a> for <?=$experience['years']?> years</p>
																</div>
															</div>
														</div>
													<?php endforeach;?>
												<?php else:?>
													<h3>No past work experience..</h3>
												<?php endif;?>
												
											</div>
				                        </div>
				                        <div class="tab-pane text-center" id="skills">
												<div class="row">
													<div class="col-md-12">
														<?php foreach($response['skills'] as $skill):?>
																<div class="row" style="margin-bottom: 20px;">
																	<div class="col-md-3 text-right"><b><?=$skill['name'];?></b></div>
																	<div class="col-md-9" style="padding-top: 10px;">
																		<div class="progress">
																			<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?=$skill['percentage'];?>%;">
																			<span class="sr-only"><?=$skill['percentage'];?>%</span>
																			</div>
																		</div>
																	</div>
																</div>
														<?php endforeach;?>
													</div>
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
	<script src="assets/js/common.js" type="text/javascript"></script>
</body>

</html>
