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
	$postArr = ['name','percentage'];

	$tablename = $TABLES['SKILLS'];
	if(!existsPost($postArr)){
		$response['error'] = "All fields are required";
	}else if(($field=isEmptyPost($postArr)) != null){
		$response['error'] = "$field is required";
	}else{
		$name = test_input($_POST["name"]);
		$percentage = test_input($_POST["percentage"]);
		$uid = $_SESSION['id'];

		$sql = "INSERT into $tablename(`name`,`percentage`,`uid`) VALUES('$name',$percentage,$uid)";

		if($conn->query($sql) == true){
			$response['success'] = 1;
			$response['id'] = $conn->insert_id;
			$response['message'] = "New skill added successfully";
		}else{
			$response['error'] = "Something went wrong.Please try again later.";
		}
	}

	die(json_encode($response));
?>