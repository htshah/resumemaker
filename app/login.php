<?php
	require_once 'db.php';
	require_once 'common.php';

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
		}else{
			$response['error'] = "Login unsuccessful";
		}
		$conn->close();
	}

	die(json_encode($response));

?>
