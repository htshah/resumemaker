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
	$postArr = ['id'];

	$tablename = $TABLES['JOBEXP'];

	if(!existsPost($postArr)){
		$response['error'] = "All fields are required";
	}else if(($field=isEmptyPost($postArr)) != null){
		$response['error'] = "$field is required";
	}else{
		$id = test_input($_POST["id"]);
		$uid = $_SESSION['id'];

		$sql = "DELETE from $tablename where `id`=$id and `uid`=$uid;";
		$response['query'] = $sql;
		if($conn->query($sql) == true && $conn->affected_rows > 0){
			$response['success'] = 1;
			$response['message'] = "Job experience deleted successfully";
		}else{
			$response['error'] = "Something went wrong.Please try again later.";
		}
	}

	die(json_encode($response));
?>