<head>
    <!-- style add for success or other message -->
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

        $insertQuery="INSERT INTO tbl_cart(sessionId, product_id, product_name, price, qty, image) values('$sId', '$productId', '$productName', '$price', '$qty','$image' )";
        $insertResult=$this->db->insert($insertQuery);
        if ($insertResult) {
            $successMsg="Product Added Success";
            return $successMsg;
        }
    }

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


}