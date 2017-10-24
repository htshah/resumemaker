<?php
	
	require_once 'db.php';
	require_once 'common.php';

	
	// password is for database and pass is the user password
	$tablename = $TABLES['USER'];


	$sql = "SELECT id,name,email from $tablename";
	$result = $conn->query($sql);
	if ($result) {
	    
	    $response['success'] = 1;
	    $response['users'] = [];
	    while($row = $result->fetch_assoc()){
	    	array_push($response['users'], $row);
	    }
	}else{
		$response['message'] = 'Something went wrong.Please try again later';
	}
	
	$conn->close();	

	die(json_encode($response));
?>