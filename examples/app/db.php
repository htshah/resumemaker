<?php

	$servername = "localhost";
	$username = "root";
	$password = "";
	$output = "0";
	
	// password is for database and pass is the user password obtained
	$dbname = "resumemaker";

	$conn = new mysqli($servername, $username, $password,$dbname);

	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	} 