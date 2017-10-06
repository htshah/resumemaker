$('.datepicker').datepicker({
	weekStart:1
});
$("#btn-signup").click(function(){
	$.post("/resumemaker/app/signup.php",$("form#form_signup").serializeArray(),function(data){
		data = $.parseJSON(data);
		console.log(data);
		if(data["success"] == 0){
			$(".signup-error .error-text").html(data.error);
			$(".signup-error").removeClass("hide");
			return false;
		}
		$(".signup_error").addClass("hide");
		$(".signup_success").removeClass("hide");
		location.reload();
	});
});
	
$("#btn-login").on('click',function(){
	$.post("/resumemaker/app/login.php",$("#form_login").serializeArray(),function(data){
		data = $.parseJSON(data);

		if(data["success"] == 0){
			$(".login-error .error-text").html(data.error);
			$(".login-error").removeClass("hide");
			return false;
		}
		$(".login_error").addClass("hide");
		location.reload();
	});
});