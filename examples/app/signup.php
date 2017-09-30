
<?php
	
	require_once 'db.php';
	require_once 'common.php';

	
	// password is for database and pass is the user password
	$tablename = $TABLES['USER'];

	if(existsPost(['email','password','dob','name','phone'])){

		$mail = test_input($_POST["email"]);
		$pass = test_input($_POST["password"]);
		$name = test_input($_POST["regname"]);
		$number = test_input($_POST["phone"]);
		$dob = test_input($_POST["dob"]);


		

		$sql = "insert into $tablename (name,email,password,phone,dob) VALUES ('$name','$mail','$pass','$number','$dob')";
	
		if ($conn->query($sql) === TRUE) {
		    
		    $response['success'] = 1;
		    $response['message'] = 'Registration successful';
		}else{
			$response['message'] = 'Something went wrong.Please try again later';
		}
		
		$conn->close();	
	}

	die(json_encode($response));
?>
