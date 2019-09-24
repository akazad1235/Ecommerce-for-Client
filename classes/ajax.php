<?php  $filepath=realpath(dirname(__FILE__));?>
<?php include_once($filepath.'/../lib/database.php')?>
<?php
        class ajaxProject{
            private $db;
            public function __construct()
            {
                $this->db=new Database();
               }
           

        public function checkUserName($username){
        	$query="SELECT product_name from tbl_product where product_name='$username'";
            $getUser=$this->db->select($query);
        	if ($getUser == null ){ 
				$bd= " enter your product name";
        		return $bd;
        	
        	}else{
        		$ald ="prodcut  available";
        		return $ald;
        	}
        }
}