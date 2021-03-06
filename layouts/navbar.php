<nav class="navbar navbar-transparent navbar-absolute">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-example">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/">Resume Maker</a>
		</div>

		<div class="collapse navbar-collapse" id="navigation-example">
			<ul class="nav navbar-nav navbar-right">
				
				<li>
					<a href="/">
						Home
					</a>
				</li>
				<!-- <li>
					<a href="/resumes.html">
						Resumes
					</a>
				</li> -->
				<?php if(!isset($_SESSION['id'])):?>
					<li>
						<a href="#!" data-toggle='modal' data-target='#myModal'>
							Register
						</a>
					</li>
					<li>
						<a href="#!" data-toggle='modal' data-target='#modal1'>
							Login
						</a>
					</li>
				<?php else:?>
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><?=$_SESSION['name'];?> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<a href="/profile.php?id=<?=$_SESSION['id'];?>">
									View profile
								</a>
							</li>
							<li>
								<a href="/edit-profile.php">
									Edit profile
								</a>
							</li>
							<li>
								<a href="/app/logout.php">
									Logout
								</a>
							</li>
							<li class="divider"></li>
							<li>
								<a href="/app/delete-profile.php">
									Delete account
								</a>
							</li>
						</ul>
					</li>
					
				<?php endif;?>
			</ul>
		</div>
	</div>
</nav>
<?php if(!isset($_SESSION['id'])):?>
	<!--signup modal start-->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Signup</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-sm-12">
							<div class="alert alert-danger signup-error hide">
								<div class="container-fluid">
									<div class="alert-icon">
										<i class="material-icons">error_outline</i>
									</div>
									
									<span class="error-text"></span>
								</div>
							</div>
							<div class="alert alert-success signup-success hide">
								<div class="container-fluid">
									<div class="alert-icon">
										<i class="material-icons">check</i>
									</div>
									
									<span class="error-text">Registration successful</span>
								</div>
							</div>
						</div>
					</div>
					<form  method="post" id="form_signup">
						<!--*************** Signup     form*******  -->
						<div class="row"> 
							<div class="col-sm-6">
								<div class="form-group label-floating">
									<label class="control-label">Name</label>
									<input type="text" id="regname" name="name" class="form-control" required/>
								</div>
							</div>
							<div class="col-sm-6">
								<div class="form-group label-floating">
									<label class="control-label">Date of birth</label>
									<input id="regdob" type="text" value="01/01/1995" name="dob" class="form-control datepicker" />
								</div>
							</div>
						</div>
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">Email</label>
									<input type="email" id="regemail" name="email" class="form-control" required/>
								</div>
							</div>
						</div>
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">Password</label>
									<input type="password" id="regpassword" name="password" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">Phone</label>
									<input type="number" id="regphone" name="phone" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">About yourself</label>
									<textarea id="regdescription" rows="4" name="description" class="form-control" ></textarea>
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">Close</button>
					<button id="btn-signup" type="button" class="btn btn-info btn-simple">Register</button>
				</div>
			</div>
		</div>
	</div>
	<!--signup modal end-->

	<!--login model start-->
	<div class="modal fade" id="modal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title" id="myModalLabel">Login</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-sm-12">
							<div class="alert alert-danger login-error hide">
								<div class="container-fluid">
									<div class="alert-icon">
										<i class="material-icons">error_outline</i>
									</div>
									
									<span class="error-text"></span>
								</div>
							</div>
						</div>
					</div>
					<form method="post" id="form_login">
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">Email</label>
									<input id="email" required type="email" value="" name="email" class="form-control" />
								</div>
							</div>
						</div>
						<div class="row"> 
							<div class="col-sm-12">
								<div class="form-group label-floating">
									<label class="control-label">Password</label>
									<input type="password" id="password" value="" name="password" class="form-control" />
								</div>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default btn-simple" data-dismiss="modal">Close</button>
					<button id="btn-login" type="button" class="btn btn-info btn-simple">Login</button>
				</div>
			</div>
		</div>
	</div>
	<!--login model end-->
<?php endif;?>
