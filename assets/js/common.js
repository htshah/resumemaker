$(document).ready(function(){
	$('.datepicker').datepicker({
		weekStart:1
	});
	$("#form_signup").click(function(){
		$.post("app/signup.php",$("form#form_signup").serializeArray(),function(data){
			
		});
	});
		
	$("#form_login").click(function(){
		$.post("app/login.php",$("form#form_login").serializeArray(),function(data){
			
		});
	});
});