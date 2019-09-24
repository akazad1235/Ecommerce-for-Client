<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script>
getCart();
$(document).ready(function(){
    
    function getCart(){
	$.ajax({
		type: 'POST',
		url: '../cart_fetch.php',
		dataType: 'json',
		success: function(response){
            $('#cart_count').html(response.count);
			      $('#cart_menu').html(response.list);
			//$('.cart_count').html(response.count);
		}
	});
}

});
</script>
</head>
<body>


</body>
</html>
