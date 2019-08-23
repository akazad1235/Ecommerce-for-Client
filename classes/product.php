<head>
    <!-- style add for success or other message -->
<link href="assests/css/style.css" rel="stylesheet" />
</head>
<?php
 include_once('../lib/database.php');
 include_once('../config/config.php');
 include_once('../helpers/format.php');
?>


    <?php
    class Product{
        private $db;
        private $fm;

        public function __construct()
        {
            $this->db=new Database();
            $this->fm=new Format();
        }
        public function addProduct($data, $file){
                
                $catId          = mysqli_real_escape_string($this->db->link,  $data['catList']);
                $brandId        = mysqli_real_escape_string($this->db->link,  $data['brandList']);
                $product_name   = mysqli_real_escape_string($this->db->link,  $data['product_name']);
                $price          = mysqli_real_escape_string($this->db->link,  $data['price']);
                $description    = mysqli_real_escape_string($this->db->link,  $data['description']);
                //$image          = mysqli_real_escape_string($this->db->link,  $data['image']);
                $tages          = mysqli_real_escape_string($this->db->link,  $data['tages']);
               // $author          = mysqli_real_escape_string($this->db->link,  $data['author']);
                //$price          = $this->fm->validation($data);
               // $catId          = $this->fm->validation($data);
                //$brandId        = $this->fm->validation($data); 
                //$product_name   = $this->fm->validation($data);
              //  $image          = $this->fm->validation($data);
                //$tages          = $this->fm->validation($data);
                 // $author         = $this->fm->validation($data); 

            
            $permited=array('jpg', 'jpeg', 'png', 'gif');
            $image_name=$file['image']['name'];
            $image_size=$file['image']['size'];
            $image_temp=$file['image']['tmp_name'];
            $div=explode('.', $image_name);
            $file_ext=strtolower(end($div));
            $unique_image=substr(md5(time()), 0, 10).'.'.$file_ext;

            $uploaded_image="uploads/".$unique_image;
            
            if($catId == " "  || $brandId==" " || $product_name== " " || $price==" " || $description==" " || $image_name  ==" " || $tages==" "){
                $chk="field must not be empty";
                return $chk;    
            }else{
            if (empty($image_name)) {
                echo "please select image";
            }
            elseif($image_size>110240){
                echo"pleas upload only 1md less than";
            }elseif(in_array($permited, $permited)){
                echo"you can only upload".implode(", ", $permited);
            }else{
                        move_uploaded_file($image_temp, $uploaded_image);
                        $query="INSERT INTO tbl_product(cat, brandId, product_name,  price, description, image, tages) values('$catId', '$brandId','$product_name', '$price', '$description',' $uploaded_image', '$tages')";

                        $result=$this->db->insert($query);
                        if ($result) {
                            $successMsg="data insert success";
                            return $successMsg;
                        }else{
                            $errorMsg="data insert faild";
                            return $errorMsg;
                        }
                    }
                    }  
                            
                    }   
            //get all product 
            public function getAllProduct(){
                $query="SELECT tbl_product.*, tbl_category.cat_name, tbl_brand.brand_name from tbl_product 
                INNER JOIN tbl_category 
                on tbl_product.cat=tbl_category.catId
                INNER JOIN tbl_brand
                on tbl_brand.id=tbl_product.brandId
                order by tbl_product.id desc"; 
                $result=$this->db->select($query);
               return $result;
            }  

            //product update for all data select 
            public function GetAllData($id){
                $query="SELECT * FROM tbl_product where id='$id'";
                $result=$this->db->select($query);
                return $result;
            }            
                    
            //product update method
            public function productUpdate($data, $file, $id){
                $catId          = mysqli_real_escape_string($this->db->link,  $data['catList']);
                $brandId        = mysqli_real_escape_string($this->db->link,  $data['brandList']);
                $product_name   = mysqli_real_escape_string($this->db->link,  $data['product_name']);
                $price          = mysqli_real_escape_string($this->db->link,  $data['price']);
                $description    = mysqli_real_escape_string($this->db->link,  $data['description']);
                //$image          = mysqli_real_escape_string($this->db->link,  $data['image']);
                $tages          = mysqli_real_escape_string($this->db->link,  $data['tages']);
                $permited=array('jpg', 'jpeg', 'png', 'gif');
                $image_name=$file['image']['name'];
                $image_size=$file['image']['size'];
                $image_temp=$file['image']['tmp_name'];
                $div=explode('.', $image_name);
                $file_ext=strtolower(end($div));
                $unique_image=substr(md5(time()), 0, 10).'.'.$file_ext;

                $uploaded_image="uploads/".$unique_image;
                if($catId == " "  || $brandId==" " || $product_name== " " || $price==" " || $description==" " ||  $tages==" "){
                    $chk="field must not be empty";
                    return $chk;    
                }else{
                if (!empty($image_name)) {
                if($image_size>110240){
                    echo"pleas upload only 1md less than";
                }elseif(in_array($permited, $permited)){
                    echo"you can only upload".implode(", ", $permited);
                }else{
                            move_uploaded_file($image_temp, $uploaded_image);
                           $query="UPDATE  tbl_product set cat='$catId ', brandId='$brandId', product_Name='$product_name', price='$price', description='$description', image='$uploaded_image', tages='$tages' where id='$id'";
    
                            $result=$this->db->update($query);
                            if ($result) {
                                $successMsg="product update success";
                                return $successMsg;
                            }else{
                                $errorMsg="data update faild";
                                return $errorMsg;
                            }
                        }
                                            
                }
                else{
                    $query="UPDATE  tbl_product set cat='$catId ', brandId='$brandId', product_Name='$product_name', price='$price', description='$description', tages='$tages' where id='$id'";
    
                    $result=$this->db->update($query);
                    if ($result) {
                        $successMsg="product update success";
                        return $successMsg;
                    }else{
                        $errMsg="prodect update faild";
                        return $errMsg;
                    }
                }
            }           
}
                    //delete product where get id
                   public function deleteProduct($id){
                    $query="DELETE from tbl_product where id='$id'";
                    $result=$this->db->delete($query);
                    if ($result) {
                        $successMsg="product delete success";
                        return $successMsg;
                    }else{
                        $errMsg="prodect delete faild";
                        return $errMsg;
                    }
                   }      
    }//end product class
    ?>

