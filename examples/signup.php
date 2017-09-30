
<?php
	
	$servername = "localhost";
	$username = "root";
	$password = "";

	$mail = $pass= $name  = $number = $address ="";
	$output = "0";
	// password is for database and pass is the user password
	$dbname = "book_store";
	$tablename = "signup";

	// echo "My first PHP script!<br>";
	$mail = test_input($_POST["email"]);
	$pass = test_input($_POST["password"]);
	$name = test_input($_POST["regname"]);
	$number = test_input($_POST["regnum"]);
	$address = test_input($_POST["regaddress"]);

	$conn = new mysqli($servername, $username, $password,$dbname);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}
	$sql = "select * from $tablename WHERE email LIKE '$mail'";
	$result = $conn->query($sql);
	if($result->num_rows > 0 ){
		$output = 2;
	} 
	else{

		$sql = "insert into $tablename (name,email,password,number,address) VALUES ('$name','$mail','$pass','$number','$address')";
	
		if ($conn->query($sql) === TRUE) {
		    
		    $output="1".$name;
		} 
		else {
		    $output =  "00";
		}

	}
	
	echo "$output";
	$conn->close();	
	

	function test_input($data) {
		$data = trim($data);
	  	$data = stripslashes($data);
	  	$data = htmlspecialchars($data);
	  	return $data;
	}


?>
