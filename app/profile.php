<?php
	require_once 'db.php';
	require_once 'common.php';

	$response = [];
	if(!existsGet(['id'])){
		die("<script>window.location='/resumemaker';</script>");
	}

	$id = test_input($_GET['id']);

	//User
	$sql = "SELECT * from {$TABLES['USER']} where id=$id;";
	$result = $conn->query($sql);
	$response['user'] = $result->fetch_assoc();
	unset($response['user']['password']);

	//Qualifications
	$sql = "SELECT * from {$TABLES['QUALIFICATION']} where uid=$id order by `year`;";
	$result = $conn->query($sql);
	$response['qualifications'] = [];
	while($row = $result->fetch_assoc()){
		array_push($response['qualifications'], $row);
	}

	//Skills
	$sql = "SELECT * from {$TABLES['SKILLS']} where uid=$id;";
	$result = $conn->query($sql);
	$response['skills'] = [];
	while($row = $result->fetch_assoc()){
		array_push($response['skills'], $row);
	}

	//Job_exp
	$sql = "SELECT * from {$TABLES['JOBEXP']} where uid=$id;";
	$result = $conn->query($sql);
	$response['experience'] = [];
	while($row = $result->fetch_assoc()){
		array_push($response['experience'], $row);
	}

	//Projects
	$sql = "SELECT * from {$TABLES['PROJECTS']} where uid=$id;";
	$result = $conn->query($sql);
	$response['projects'] = [];
	while($row = $result->fetch_assoc()){
		array_push($response['projects'], $row);
	}
	// echo "<pre>";
	// print_r($response);
	// die("");
?>