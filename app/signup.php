<?php
	
	require_once 'db.php';
	require_once 'common.php';

	
	// password is for database and pass is the user password
	$tablename = $TABLES['USER'];

	if(existsPost(['email','password','dob','name','phone','description'])){
		if(($field = isEmptyPost(['email','password','dob','name','phone','description'])) != null){
			$response['success'] = 0;
			$response['error'] = "$field is empty";
		}else{

			$mail = test_input($_POST["email"]);
			$pass = test_input($_POST["password"]);
			$name = test_input($_POST["name"]);
			$description = test_input($_POST["description"]);
			$number = test_input($_POST["phone"]);
			$dob = test_input($_POST["dob"]);


			

			$sql = "insert into $tablename (name,email,description,password,phone,dob) VALUES ('$name','$mail','$description','$pass','$number','$dob')";
		
			if ($conn->query($sql) === TRUE) {
			    
			    $response['success'] = 1;
			    $response['message'] = 'Registration successful';
			}else{

				if($conn->errno == 1062 && strpos($conn->error,"email")){
					$response['error'] = "Email-id already exists";
				}else
					$response['error'] = 'Something went wrong.Please try again later';
			}
			
		}
		$conn->close();	
	}

	die(json_encode($response));
?>
