$(document).ready(function(){
    getProduct();
                    function getProduct(){
       // var cat_id=$(this).attr("pid");
                    $.ajax({
                        url:"check/action.php",
                        method:"POST",
                        data: {Get_product:1},
                        success:function(data){
                            $("#Get_product").html(data);
                        }
                    })

                }

    
})