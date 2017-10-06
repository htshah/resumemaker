<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}

	if(!isset($_SESSION['id'])){
		die("<script>window.location.href='/resumemaker/error.php?e=Unauthorized access';</script>");
	}

	require_once 'db.php';
	require_once 'common.php';

	$tablename = $TABLES['USER'];
	$sql = "DELETE from $tablename where id=".$_SESSION['id'];

	if($conn->query($sql) == true){
		session_destroy();
		die("<script>window.location.href='/resumemaker/error.php?e=Account deleted successfully';</script>");
	}
	die("<script>window.location.href='/resumemaker/error.php?e=Something went wrong. Please try again later';</script>");
?>