<head>
    <!-- style add for success or other message -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link href="assests/css/style.css" rel="stylesheet" />

</head>
<?php  //$filepath= realpath(dirname(__FILE__));?>
<?php //include_once($filepath.'../../../lib/database.php');?>
<?php //include_once($filepath.'../../../config/config.php');?>
<?php  $filepath= realpath(dirname(__FILE__));?>
<?php include_once($filepath.'/../lib/database.php');?>
<?php include_once($filepath.'/../helpers/format.php');?>
<?php
 class Cart{
    private $db;
    private $fm;

    public function __construct()
    {
        $this->db=new Database();
        $this->fm=new Format();

    }
    public function addCart($qty, $id){
        
        $query="SELECT * FROM tbl_product where id='$id'";
        $result=$this->db->select($query)->fetch_assoc();
        $sId=session_id();
        $productId=$result['product_id'];
        $productName=$result['product_name'];
        $price=$result['price'];
        $image=$result['image'];
        $chkCart="SELECT * FROM tbl_cart where product_id='$productId' and sessionId='$sId'";
        $chkCartResult=$this->db->select($chkCart);
        if ($chkCartResult) {?>
            <div class="alert alert-danger alert-dismissible fade in">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
           <strong>
        <?php echo "Product Cart Already Added!!"; ?>
        </strong>
        
        </div>
        
        <?php
            
        }else{
        $insertQuery="INSERT INTO tbl_cart(sessionId, product_id, product_name, price, qty, image) values('$sId', '$productId', '$productName', '$price', '$qty','$image' )";
        $insertResult=$this->db->insert($insertQuery);
        if ($insertResult) {?>
            <div class="alert alert-success alert-dismissible fade in">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
           <strong><?php echo "Product Cart Added Success!!"; ?></strong>
           
        </div>     
        <?php  
        }
    }
}

    //get all curt for cart page
    public function getAllCart(){
        $sId=session_id();
        $query="SELECT * FROM tbl_cart where sessionId='$sId'";
        $result=$this->db->select($query);
        return $result;
    }


    public function getCartList(){
        $sId=session_id();
        $query="SELECT * from tbl_cart where sessionId='$sId'";
        $result=$this->db->select($query);
        return $result;
    }

    // quantity update method
     public function updateQty($qty, $cartId){
         if($qty <=0) {?>
            <div class="alert alert-danger alert-dismissible fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong><?php echo "Quantity Update must be 1+ "; ?></strong>
                    </div>
       <?php }
                else  {
                   $upQuery="UPDATE  tbl_cart set qty='$qty' where cartId='$cartId'";
                     $upQTresult=$this->db->update($upQuery); 
                     if ($upQTresult) {?>
                        <div class="alert alert-success alert-dismissible fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong><?php echo "Cart Updated Success!!"; ?></strong>
                    
                    </div>
                <?php     }
                    }
                }

                public function cartDelete($id){

                    $dltQuery="DELETE from tbl_cart where cartId='$id'";
                    $cartdeltResult=$this->db->delete($dltQuery);
                    if (!$cartdeltResult) {?>
                        
                        <div class="alert alert-danger alert-dismissible fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    <strong><?php echo "Cart Delete Falild!!"; ?></strong>
                    
                    </div>
                   <?php
                    }
                }

                 public function checkCartTable(){
                    $sId=session_id();
                    $query="SELECT *  from tbl_cart where sessionId='$sId'";
                    $result=$this->db->select($query);
                    return $result;
                } 
             

}
?>