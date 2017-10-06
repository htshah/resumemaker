<?php
	$TABLES = [
		'USER' => 'user',
		'JOBEXP' => 'job_exp',
		'QUALIFICATION' => 'qualification',
		'SKILLS' => 'skills',
		'PROJECTS' => 'projects',
	];

	function test_input($data) {
		$data = trim($data);
	  	$data = stripslashes($data);
	  	$data = htmlspecialchars($data);
	  	return $data;
	}

	function existsPost($arr){
		foreach ($arr as $value) {
			if(!isset($_POST[$value]))
				return false;
		}
		return true;
	}
	function existsGet($arr){
		foreach ($arr as $value) {
			if(!isset($_GET[$value]))
				return false;
		}
		return true;
	}

	function isEmptyPost($arr){
		if(gettype($arr) !== "array"){
			$arr = [$arr];
		}

		foreach($arr as $key){
			if(empty($_POST[$key]))
				return $key;
		}
		return null;
	}

	function isEmptyGet($arr){
		if(gettype($arr) !== "array"){
			$arr = [$arr];
		}

		foreach($arr as $key){
			if(empty($_GET[$key]))
				return $key;
		}
		return null;
	}



	$response = ['success'=>0];