<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}

	if(!isset($_SESSION['id'])){
		die("Unauthorized access");
	}

	require_once 'db.php';
	require_once 'common.php';

	$tablename = $TABLES['USER'];
	$sql = "DELETE from $tablename where id=".$_SESSION['id'];

	if($conn->query($sql) == true){
		session_destroy();
		die("Account deleted successfully");
	}

	die("Something went wrong. Please try again later");
?>