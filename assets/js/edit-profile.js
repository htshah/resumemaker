$("#btn-basic-profile").click(function(){
	$(".error-box,.success-box").addClass("hide");
	$.ajax({
		url:"/resumemaker/app/update-profile.php",
		type:"POST",
		data: $("form#basic_profile").serializeArray(),
		success:function(data){
			console.log(data);
			data = $.parseJSON(data);
			if(data["success"] == 0){
				$("#personal .error-box .text").html(data['error'])
				$("#personal .error-box").removeClass("hide");
				return;
			}

			$("#personal .success-box .text").html(data['message']).removeClass("hide");
			$("#personal .success-box").removeClass("hide");
		}
	});
});

/**
	Education
*/

$("#btn-education").click(function(){
	$(".error-box,.success-box").addClass("hide");
	var name = $("#degree").val();
	var year = $("#degree-year").val();
	var institute = $("#degree-institute").val();
	$.ajax({
		url:"/resumemaker/app/add-qualification.php",
		type:"POST",
		data: $("form#qualification-form").serializeArray(),
		success:function(data){
			data = $.parseJSON(data);
			if(data['success'] == 0){
				$("#qualification .error-box .text").html(data['error']).removeClass("hide");
				$("#qualification .error-box").removeClass("hide");
				return;
			}
			var card = $(".templates .qualification").clone();
			card.find("big").html(name+" from "+institute+" in year "+year);
			card.find("i").attr("data-id",data['id']);

			$("#qualification .row-content").append(card);
			$("#qualification .success-box .text").html(data['message']).removeClass("hide");
			$("#qualification .success-box").removeClass("hide");
		}
	});
});

$("body").on("click",".delete-edu",function(){
	var id = $(this).attr("data-id");
	var ele = $(this).closest(".card");
	$.ajax({
		url:"/resumemaker/app/delete-qualification.php",
		type:"POST",
		data:{id:id},
		success:function(data){
			console.log(data);
			data = $.parseJSON(data);
			if(data["success"] == 0){
				alert(data['error']);
				return;
			}
			alert(data['message']);
			ele.remove();
		}
	});
});

/**
	Work
*/

$("#btn-exp").click(function(){
	$(".error-box,.success-box").addClass("hide");
	var title = $("#job-title").val();
	var year = $("#job-year").val();
	var company = $("#company").val();
	var company_site = $("#company_site").val();
	$.ajax({
		url:"/resumemaker/app/add-job.php",
		type:"POST",
		data: $("form#experience-form").serializeArray(),
		success:function(data){
			data = $.parseJSON(data);
			if(data['success'] == 0){
				$("#work .error-box .text").html(data['error']).removeClass("hide");
				$("#work .error-box").removeClass("hide");
				return;
			}
			var card = $(".templates .work").clone();
			card.find("b").html(title);
			card.find("a").attr("href",company_site);
			card.find("a").html(company);
			card.find(".years").html(year);
			card.find("i").attr("data-id",data['id']);

			$("#work .row-content").append(card);
			$("#qualification .success-box .text").html(data['message']).removeClass("hide");
			$("#qualification .success-box").removeClass("hide");
		}
	});
});

$("body").on("click",".delete-exp",function(){
	var id = $(this).attr("data-id");
	var ele = $(this).closest(".card");
	$.ajax({
		url:"/resumemaker/app/delete-job.php",
		type:"POST",
		data:{id:id},
		success:function(data){
			console.log(data);
			data = $.parseJSON(data);
			if(data["success"] == 0){
				alert(data['error']);
				return;
			}
			alert(data['message']);
			ele.remove();
		}
	});
});