<head>
    <!-- style add for success or other message -->
<link href="assests/css/style.css" rel="stylesheet" />
</head>
<?php  //$filepath= realpath(dirname(__FILE__));?>
<?php //include_once($filepath.'../../../lib/database.php');?>
<?php //include_once($filepath.'../../../config/config.php');?>
<?php
 include_once('../lib/database.php');
 include_once('../config/config.php');
?>


    <?php
    class Brand{

        private $db;
        //private $fm;

        public function __construct()
        {
            $this->db=new Database();
           // $this->fm=new Format();

        }

        public function addBrand($name, $status){
            if (empty($name)) {
                $alrtMsg="<span class='alrtMsg'> Brand Name Must Not be Empty<span>";
                return $alrtMsg;
            }else{
                $query="SELECT * FROM tbl_brand where brand_name='$name'";
            $result=$this->db->select($query);
            if ($result) {
                $alrtMsg ="<sapn class='alrtMsg'>Brand Name Already Selected</span>";
                return $alrtMsg;
            }else{
                 $query ="INSERT INTO tbl_brand(brand_name, status) values ('$name', '$status')";
                $result=$this->db->insert($query);
                if($result){
                    $successMsg="<span class='success'>Brand Name Insert Success<span>";
                    return $successMsg;
                }else{
                    $erroMsg="<span class='erroMsg'>Brand Name Insert Fiald</span>";
                    return $erroMsg;
                }
            }
            }      
        }

        public function barndList(){
            $query="SELECT * FROM tbl_brand";
            $catResult=$this->db->select($query);
            return $catResult;
            /* if (!$catResult) {
                $erroMsg="<span class='erroMsg'>Catagory Data Select Faild</span>";
                return $erroMsg;
            } */
        }

       public function  getAllBrandlist(){
           $query="SELECT * FROM tbl_brand";
           $result=$this->db->select($query);
           return $result;
       }
    }
    ?>