<head>
    <!-- style add for success or other message -->
<link href="assests/css/style.css" rel="stylesheet" />
</head>
<?php  //$filepath= realpath(dirname(__FILE__));?>
<?php //include_once($filepath.'../../../lib/database.php');?>
<?php //include_once($filepath.'../../../config/config.php');?>
<?php
 include_once('../lib/database.php');
 include_once('../helpers/format.php');
 include_once('../config/config.php');
?>


    <?php
    class Category{

        private $db;
        private $fm;

        public function __construct()
        {
            $this->db=new Database();
            $this->fm=new Format();

        }

        public function addCategory($name){
            $name=$this->fm->validation($name);
            $name=mysqli_real_escape_string($this->db->link,  $name);
            if (empty($name)) {
                $alrtMsg="<span class='alrtMsg'> Category Name Must Not be Empty<span>";
                return $alrtMsg;
            }else{
                $query="SELECT * FROM tbl_category where cat_name='$name'";
            $result=$this->db->select($query);
            if ($result) {
                $alrtMsg ="<sapn class='alrtMsg'>Category Name Already Selected</span>";
                return $alrtMsg;
            }else{
                 $query ="INSERT INTO tbl_category(cat_name) values ('$name')";
                $result=$this->db->insert($query);
                if($result){
                    $successMsg="<span class='success'>Category Name Insert Success<span>";
                    return $successMsg;
                }else{
                    $erroMsg="<span class='erroMsg'>Category Name Insert Fiald</span>";
                    return $erroMsg;
                }
            }
            }      
        }

        public function catList(){
            $query="SELECT * FROM tbl_category ";
            $catResult=$this->db->select($query);
            return $catResult;
            /* if (!$catResult) {
                $erroMsg="<span class='erroMsg'>Catagory Data Select Faild</span>";
                return $erroMsg;
            } */
        }

       public function  getAllCatlist(){
           $query="SELECT * FROM tbl_category";
           $result=$this->db->select($query);
           return $result;
       }

       //create for category delete method
       public function catDelete($id){
            $query="ALTER TABLE tbl_category
            DROP  $id ";
            $result=$this->db->delete($query);
            if ($result) {
                $successMsg="Category Delete Success";
                return $successMsg;
            }else{
                $erroMsg="Category Delete Faild";
                return  $erroMsg;
            }
       }
       //categoy name select method for category update
       public function upCatSelect($id){
           $query="SELECT * FROM tbl_category where catId='$id'";
           $result=$this->db->select($query);
           return $result;
       
    }
        //create method for update category
        public function updateCategory($name, $id){
            $name=$_POST['name'];
            $query="UPDATE  tbl_category set cat_name='$name' where catId='$id'";
            $result=$this->db->update($query);
            return $result;
        }


      
    }
    //category class end
    ?>