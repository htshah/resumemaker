
<?php
	$mail = $pass="";
	$servername = "localhost";
	$username = "root";
	$password = "";
	$output = "0";
	
	// password is for database and pass is the user password obtained
	$dbname = "book_store";
	$tablename = "signup";

	// echo "My first PHP script!<br>";
	$mail = test_input($_POST["email"]);
	$pass = test_input($_POST["password"]);
	$conn = new mysqli($servername, $username, $password,$dbname);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 
	$sql = "select * from $tablename";
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
	    
	    while($row = $result->fetch_assoc()) {
	    	if($row["email"] == $mail and $row["password"] == $pass){
	    		$output ="1".$row["name"];	
	    		
	    	}
	    	else if($row["email"]==$mail and $row["password"] != $pass){
	    		$output = "2";
	    	}
	    	else if($row["email"]!=$mail and $row["password"] == $pass){
	    		$output = "3";
	    	}
	    	else if($mail=="" or $pass == ""){
	    		$output = "4";	
	    	}
	        
	    }
	} 
	else {
	    echo "0results";
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
