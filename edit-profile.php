<?php
	if (session_status() == PHP_SESSION_NONE) {
		session_start();
	}

	require "app/profile.php";
?>
<!doctype html>
<html lang="en">
<head>
	<meta charset="utf-8" />
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" href="assets/img/favicon.png">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

	<title>Resume Maker | Edit Profile</title>

	<meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />

	<!--     Fonts and icons     -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />

	<!-- CSS Files -->
	<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
	<link href="assets/css/material-kit.css" rel="stylesheet"/>
	<link href="assets/css/style.css" rel="stylesheet"/>
	<style type="text/css">
		.error-box *,.success-box *{
			color: #fff !important;
		}
	</style>

</head>
<body class="profile-page">
	<?php require_once 'layouts/navbar.php';?>

    <div class="wrapper">
		<div class="header header-filter" style="background-image: url('assets/img/examples/city.jpg');"></div>

		<div class="main main-raised">
			<div class="container ">
				<div class="row">
					<h3 class="col-md-12">Edit Profile</h3>
				</div>
				<div class="row" style="margin-bottom: 20px;">
					<div class="col-md-2">
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
	                                Education
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
					</div>
					<div class="col-md-offset-2 col-md-6">
						<div class="tab-content gallery">
							<div class="tab-pane active" id="personal">
	                            <div class="row">                           	
                            		<div class="card">
                            			<div class="content">
                            				<div class="row">
                            					<div class="col-sm-12 error-box hide">
													<div class="alert alert-danger basic-profile-error">
														<div class="container-fluid">
															<div class="alert-icon">
																<i class="material-icons">error_outline</i>
															</div>
															
															<span class="text"></span>
														</div>
													</div>
												</div>
												<div class="col-sm-12 success-box hide">
													<div class="alert alert-success basic-profile-error">
														<div class="container-fluid">
															<div class="alert-icon">
																<i class="material-icons">check</i>
															</div>
															
															<span class="text"></span>
														</div>
													</div>
												</div>
                            				</div>
	                            			<form id="basic_profile">
	                            				<div class="form-group label-floating">
													<label class="control-label">Name</label>
													<input type="text" id="name" name="name" class="form-control" value="<?=$response['user']['name'];?>" />
												</div>
												<div class="form-group label-floating">
													<label class="control-label">Password</label>
													<input type="text" id="password" name="password" class="form-control" />
												</div>
												<!-- <div class="form-group">
													<label class="control-label no-margin-top" style="font-size: 14px;">Update Picture</label>
													<input type="file" id="profile_pic" name="profile_pic" class="form-control" />
												</div> -->
												<div class="form-group label-floating">
													<label class="control-label">Phone</label>
													<input type="text" id="phone" name="phone" class="form-control" value="<?=$response['user']['phone'];?>" />
												</div>
												<div class="form-group label-floating">
													<label class="control-label">Email</label>
													<input type="text" id="email" name="email" class="form-control" value="<?=$response['user']['email'];?>" />
												</div>
												<div class="form-group label-floating">
													<label class="control-label">DOB</label>
													<input type="text" id="dob" name="dob" class="form-control datepicker" value="<?=$response['user']['dob'];?>" />
												</div>
												<div class="form-group label-floating">
													<label class="control-label">About me</label>
													<textarea id="description" name="description" class="form-control" rows="3"><?=$response['user']['description'];?></textarea>
												</div>
	                            			</form>
	                            			<div class="row text-right">
												<button id="btn-basic-profile" type="button" class="btn btn-info btn-simple">Save</button>
											</div>
                            			</div>
                            		</div>
	                            </div>
	                        </div>
	                        <div class="tab-pane text-center" id="qualification">
	                        	<div class="row">
                					<div class="col-sm-12 error-box hide">
										<div class="alert alert-danger basic-profile-error">
											<div class="container-fluid">
												<div class="alert-icon">
													<i class="material-icons">error_outline</i>
												</div>
												
												<span class="text"></span>
											</div>
										</div>
									</div>
									<div class="col-sm-12 success-box hide">
										<div class="alert alert-success basic-profile-error">
											<div class="container-fluid">
												<div class="alert-icon">
													<i class="material-icons">check</i>
												</div>
												
												<span class="text"></span>
											</div>
										</div>
									</div>
                				</div>
								<div class="row row-content" style="position: relative;">
									<div class="timeline"></div>
									<div class="col-md-12 text-center" style="background: #fff;margin-bottom: 20px;">
										<big>Born in <?=end(explode('/',$response['user']['dob']));?></big>
									</div>
									<div class="row-content">
										<?php foreach($response['qualifications'] as $qualification):?>
											<div class="card">
												<div class="content">
													<big><?=$qualification['name'];?> from <?=$qualification['institute'];?> in year <?=$qualification['year'];?>
													</big>
													<i class="material-icons delete-icon-btn delete-edu" data-id="<?=$qualification['id'];?>">close</i>
												</div>
											</div>
										<?php endforeach;?>
									</div>
									<div class="card">
										<div class="content">
											<form id="qualification-form">
												<div class="row text-left">
													<div class="col-md-10 ">
														<div class="form-group label-floating">
															<label class="control-label">Degree</label>
															<input type="text" id="degree" name="name" class="form-control" />
														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group label-floating">
															<label class="control-label">Year</label>
															<input type="text" id="degree-year" name="year" class="form-control" />
														</div>
													</div>
												</div>
												<div class="row text-left">
													<div class="col-md-12 ">
														<div class="form-group label-floating">
															<label class="control-label">Institute</label>
															<input type="text" id="degree-institute" name="institute" class="form-control" />
														</div>
													</div>
												</div>
											</form>
											<div class="row text-right">
												<button id="btn-education" type="button" class="btn btn-info btn-simple">Add</button>
											</div>
										</div>
									</div>
								</div>
	                        </div>
							<div class="tab-pane text-center" id="work">
								<div class="row">
                					<div class="col-sm-12 error-box hide">
										<div class="alert alert-danger basic-profile-error">
											<div class="container-fluid">
												<div class="alert-icon">
													<i class="material-icons">error_outline</i>
												</div>
												
												<span class="text"></span>
											</div>
										</div>
									</div>
									<div class="col-sm-12 success-box hide">
										<div class="alert alert-success basic-profile-error">
											<div class="container-fluid">
												<div class="alert-icon">
													<i class="material-icons">check</i>
												</div>
												
												<span class="text"></span>
											</div>
										</div>
									</div>
                				</div>
								<div class="row" style="position: relative;">
									<div class="row-content">
										<?php foreach($response['experience'] as $experience):?>
											<div class="card">
												<div class="content text-left">
													<i class="material-icons delete-icon-btn delete-exp" data-id="<?=$experience['id'];?>">close</i>
													<big>As a <b><?=$experience['title'];?></b></big>
													<p>At <a href="<?=$experience['company_site'];?>" target="_blank"><?=$experience['company']?></a> for <?=$experience['years']?> years</p>
												</div>
											</div>
										<?php endforeach;?>
									</div>
									<div class="card">
										<div class="content">
											<form id="experience-form">
												<div class="row text-left">
													<div class="col-md-10">
														<div class="form-group label-floating">
															<label class="control-label">Title</label>
															<input type="text" id="job-title" name="title" class="form-control" />
														</div>
													</div>
													<div class="col-md-2">
														<div class="form-group label-floating">
															<label class="control-label">Years</label>
															<input type="text" id="job-year" name="years" class="form-control" />
														</div>
													</div>
												</div>
												<div class="row text-left">
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label class="control-label">Company</label>
															<input type="text" id="company" name="company" class="form-control" />
														</div>
													</div>
													<div class="col-md-6">
														<div class="form-group label-floating">
															<label class="control-label">Company Site</label>
															<input type="text" id="company_site" name="company_site" class="form-control" />
														</div>
													</div>
												</div>
											</form>
											<div class="row text-right">
												<button id="btn-exp" type="button" class="btn btn-info btn-simple">Add</button>
											</div>
										</div>
									</div>
								</div>
	                        </div>
	                        <div class="tab-pane text-center" id="skills">
									<div class="row">
										<div class="col-md-12 skills-form">
											<?php foreach($response['skills'] as $skill):?>
													<div class="row" style="margin-bottom: 20px;">
														<div class="col-md-3 text-right"><b><?=$skill['name'];?></b></div>
														<div class="col-md-9" style="padding-top: 10px;">
															<!-- <div class="slider" data-value="<?=$skill['percentage'];?>"></div> -->
															<div class="progress">
																<div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <?=$skill['percentage'];?>%;">
																<span class="sr-only"><?=$skill['percentage'];?>%</span>
																</div>
															</div>
														</div>
													</div>
											<?php endforeach;?>
										</div>
										<div class="col-md-12">
											<div class="card">
												<div class="content">
													<form id="skill-form">
														<div class="row text-left">
															<div class="col-md-3">
																<div class="form-group label-floating">
																	<label class="control-label">Skill</label>
																	<input type="text" id="skill-name" name="name" class="form-control" />
																</div>
															</div>
															<div class="col-md-9" style="padding-top: 30px;">
																<div class="new-skill-slider slider" data-value="35"></div>
															</div>
														</div>
													</form>
													<!-- <div class="row text-right">
														<button id="btn-skill-add" type="button" class="btn btn-info btn-simple">Add</button>
													</div> -->
												</div>
											</div>
										</div>
										<div class="row text-right">
											<button id="btn-skill-save" type="button" class="btn btn-info btn-simple">Save</button>
										</div>
									</div>
								</div>
	                        </div>
	                    </div>
					</div>
				</div>
			</div>
		</div>

    </div>
    
    <?php require_once 'layouts/footer.php';?>


    <div class="templates hide">
    	<div class="qualification">
    		<div class="card">
				<div class="content">
					<big></big>
					<i class="material-icons delete-icon-btn delete-edu">close</i>
				</div>
			</div>
    	</div>
    	<div class="work">
    		<div class="card">
				<div class="content text-left">
					<i class="material-icons delete-icon-btn delete-exp">close</i>
					<big>As a <b></b></big>
					<p>At <a href="" target="_blank"></a> for <span class="years"></span> years</p>
				</div>
			</div>
    	</div>
    </div>

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
	<script type="text/javascript">
		$(".slider").each(function(){
			var val = $(this).attr("data-value");
			console.log(val);
			$(this).noUiSlider({
				start: [val],
				connect: "lower",
				range: {
				    min: 0,
				    max: 100
				}
			});
		});
	</script>
	<script src="assets/js/edit-profile.js" type="text/javascript"></script>
</body>
</html>