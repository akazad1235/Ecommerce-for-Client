
$(document).ready(function(){
	$('#username').blur(function(){
	var username = $(this).val();
		$.ajax({
		url: "check/checkuser.php",	
  		type: "POST",
  		data:{username:username},
  		dataType: "text",
  		success: function(data){
  			$('#userstatus').html(data);
  		}
	});
	});
});
