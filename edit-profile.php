<?php
if (session_status() == PHP_SESSION_NONE) {
	session_start();
}

if(!isset($_SESSION['id'])){
	die("<script>window.location.href='/resumemaker/error.php?e=Please login to continue';</script>");
}
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

</head>

<body class="profile-page">
	<?php require_once '/layouts/navbar.php';?>

	<div class="wrapper">
		<div class="header header-filter" style="background-image: url('assets/img/examples/city.jpg');"></div>

		<div class="main main-raised">
			<div class="profile-content">
				<div class="container">
					<div class="row">
						<div class="profile">
							<div class="avatar">
								<img src="assets/img/no-profile-img.jpg" alt="Circle Image" class="img-circle img-responsive ">
							</div>
							<div class="name">
								<h3 id="title-name" class="title"><?=$_SESSION['name'];?></h3>
								
							</div>
						</div>
					</div>
					<div class="description text-center">
						
					</div>

					<div class="row">
						

						<!--form start-->







						<form  method="post" action="update_profile.php" id="form_signup">

							
												</form>





















												<span id="signup-error" style="color:red"></span>
												<!--*************** Signup     form*******  -->
												<div class="row"> 
													<div class="col-sm-12">
														<div class="form-group">



															<?php
															require_once 'app/db.php';
															require_once 'app/common.php';

															if (existsPost(['email','password'])){
																$email = test_input($_POST["email"]);
																$pass = test_input($_POST["password"]);

																$tablename = $TABLES['USER'];
																$sql = "select * from $tablename where `email`='$email' and `password`='$pass' LIMIT 1";
																$result = $conn->query($sql);
																if ($result->num_rows == 1) {
																	$response['success'] = 1;
																	$response['message'] = 'Login successfull';
																	session_start();
																	$row = $result->fetch_assoc();
																	$_SESSION['id'] = $row['id'];
																	$_SESSION['name'] = $row['name'];
																	$_SESSION['profile_pic'] = $row['profile_pic'];
																	$_SESSION['passw'] = $row['password'];
																	$_SESSION['phone'] = $row['phone'];
																	$_SESSION['dob'] = $row['dob'];

																}else{
																	$response['error'] = "Login unsuccessful";
																}

															}



															?>




												<!--div class="row"> 
													<div class="col-sm-12">
														<div class="form-group">
															<input id="regskills" type="text" value="" placeholder="Skills" name="regskills" class="form-control" />
														</div>
													</div>
												</div>

												<div class="row"> 
													<div class="col-sm-12">
														<div class="form-group">
															<input id="regprojects" type="text" value="" placeholder="Projects" name="regprojects" class="form-control" />
														</div>
													</div>
												</div>

												<div class="row"> 
													<div class="col-sm-12">
														<div class="form-group">
															<input id="regexp" type="number" value="" placeholder="Work Exp(in years)" name="regexp" class="form-control" />
														</div>
													</div>
												</div!-->



<div class="modal-content">


								<div class="modal-body">





									
									<div class="modal-header">
										<h4 class="modal-title" id="myModalLabel">Edit Profile</h4>
									</div>
									<div class="modal-body">
										<div class="row">
											
										</div>
										<form method="post" id="form_signup">
											<!--*************** Signup     form*******  -->
											<div class="row"> 
												<div class="col-sm-6">
													<div class="form-group label-floating ">
														<label class="control-label">Name</label>
														<input type="text" value="<?=$_SESSION['name'];?>" id="regname" name="name" class="form-control" required="">
														<span class="material-input"></span></div>
													</div>
													<div class="col-sm-6">
														<div class="form-group label-floating">
															<label class="control-label">Date of birth</label>
															<input value = <?=$_SESSION['dob'];?> id="regdob" type="text" value="01/01/1995" name="dob" class="form-control datepicker">
															<span class="material-input"></span></div>
														</div>
													</div>
																							
														<div class="row"> 
															<div class="col-sm-12">
																<div class="form-group label-floating">
																	<label class="control-label">Password</label>
																	<input type="text" value = <?=$_SESSION['passw'];?> id="regpassword" name="password" class="form-control">
																	<span class="material-input"></span></div>
																</div>
															</div>
															<div class="row"> 
																<div class="col-sm-12">
																	<div class="form-group label-floating">
																		<label class="control-label">Phone</label>
																		<input type="number" value = <?=$_SESSION['phone'];?> id="regphone" name="phone" class="form-control">
																		<span class="material-input"></span></div>
																	</div>
																</div>
																<div class="row"> 
																	<div class="col-sm-12">
																		<div class="form-group label-floating">
																			<label class="control-label">About yourself</label>
																			<textarea id="regdescription" rows="4" name="description" class="form-control"></textarea>
																			<span class="material-input"></span></div>
																		</div>
																	</div>
																</form>
															</div>
															
														</div>
													</div>









											</div>
											<div class="modal-footer">
												<div class="row"> 

													<input type="submit" value="Update" class="btn btn-info" text-align="center" id="signup1">

												</div>
											</div>
										</div>
									</form>


									<!--form end-->


								</div>

							</div>
						</div>
					</div>

				</div>

				<?php require_once '/layouts/footer.php';?>

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
			<script type="text/javascript">
				var name,mail,pass,num,dob,skills,projects,exp;
				$(document).ready(function(){
					$("#regemail").val("mail");
		// loadData();
		// writeData();

	});
				function loadData(){
					$.post("app/login.php",$("form#form_signup").serializeArray(),function(data){
						var data1 = JSON.parse(data);
						name = data1.name;
						mail = data1.name;
						pass = data1.name;
						num = data1.name;
						dob = data1.name;
						skills = data1.name;
						projects = data1.name;
						exp = data1.name;


					});
				}
				function writeData(){
					$("#regname").val(name);
					$("#regemail").val(mail);
					$("#regpassword").val(pass);
					$("#regnum").val(num);
					$("#regdob").val(dob);
					$("#regskills").val(skills);
					$("#regprojects").val(projects);
					$("#regexp").val(exp);
				}
			</script>
			</html>