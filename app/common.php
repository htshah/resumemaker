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

	function existsPost($arr,$except = []){
		foreach ($arr as $value){
			if(!isset($_POST[$value]) && !in_array($value,$except))
				return false;
		}
		return true;
	}
	function existsGet($arr,$except = []){
		foreach ($arr as $value) {
			if(!isset($_GET[$value]) && !in_array($value,$except))
				return false;
		}
		return true;
	}

	function isEmptyPost($arr,$except = []){
		if(gettype($arr) !== "array"){
			$arr = [$arr];
		}

		foreach($arr as $key){
			if(empty($_POST[$key]) && !in_array($key,$except))
				return $key;
		}
		return null;
	}

	function isEmptyGet($arr, $except = []){
		if(gettype($arr) !== "array"){
			$arr = [$arr];
		}

		foreach($arr as $key){
			if(empty($_GET[$key]) && !in_array($key,$except))
				return $key;
		}
		return null;
	}



	$response = ['success'=>0];