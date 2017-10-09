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
	$postArr = ['title','years','company','company_site'];

	$tablename = $TABLES['JOBEXP'];
	if(!existsPost($postArr,['company_site'])){
		$response['error'] = "All fields are required";
	}else if(($field=isEmptyPost($postArr,['company_site'])) != null){
		$response['error'] = "$field is required";
	}else{
		$title = test_input($_POST["title"]);
		$years = test_input($_POST["years"]);
		$company = test_input($_POST["company"]);
		
		$company_site = "";
		if(isset($_POST['company_site']) && !empty($_POST['company_site']))
			$company_site = test_input($_POST["company_site"]);

		$uid = $_SESSION['id'];

		$sql = "INSERT into $tablename(`title`,`years`,`company`,`company_site`,`uid`) VALUES('$title',$years,'$company','$company_site',$uid)";

		if($conn->query($sql) == true){
			$response['success'] = 1;
			$response['id'] = $conn->insert_id;
			$response['message'] = "New job experience added successfully";
		}else{
			$response['error'] = "Something went wrong.Please try again later.";
		}
	}

	die(json_encode($response));
?>