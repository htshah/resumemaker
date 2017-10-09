<?php
	require_once 'db.php';
	require_once 'common.php';

	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}

	if(!isset($_SESSION['id'])){
		die(json_encode(['error'=>'Unauthorised access']));
	}

	$response = ["success"=>0];
	$postArr = ['name','phone','email','dob','description'];

	$tablename = $TABLES['USER'];
	if(!existsPost($postArr)){
		$response['error'] = "All fields are required";
	}else if(($field=isEmptyPost($postArr)) != null){
		$response['error'] = "$field is required";
	}else{
		$email = test_input($_POST["email"]);
		if(isset($_POST['password'])){
			$pass = test_input($_POST["password"]);
		}
		$name = test_input($_POST["name"]);
		$description = test_input($_POST["description"]);
		$number = test_input($_POST["phone"]);
		$dob = test_input($_POST["dob"]);

		$uid = $_SESSION['id'];
		$sql = "UPDATE $tablename SET `name`='$name',`email`='$email',`dob`='$dob',`phone`='$number',`description`='$description'";
		if(!empty($pass)){
			$sql.= ",`password`='$pass'";
		}

		$sql.=" where id=$uid";
		if($conn->query($sql) == true){
			$response['success'] = 1;
			$response['message'] = "Profile updated successfully";

			$_SESSION['name'] = $name;
		}else{
			$response['error'] = "Something went wrong.Please try again later.";
		}
	}

	die(json_encode($response));
?>