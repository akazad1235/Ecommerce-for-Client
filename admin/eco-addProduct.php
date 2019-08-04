<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->
<?php include("../classes/product.php")?>
<?php include("../classes/category.php")?>
<?php include("../classes/brand.php")?>
<?php
//autoload all classes from classes folder
function __autoload($class_name){
    include("../classes/".$class_name.".php");
}
?>

<?php $product = new Product()?>
<?php $getCat = new Category()?>
<?php $getBrand = new Brand()?>
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <div class="content">
                    <!-- Start Content-->
                    <div class="container-fluid">
  <?php
    
    if ($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['submit'])) {
        $addproduct = $product->addProduct($_POST,$_FILES);
        echo $addproduct;
        }
  ?>                    
                    <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                            <div class="page-header bg-secondary text-white">
                            <h2>Add New Product</h2>
                        <form action="" method="post" enctype="multipart/form-data">   
                            </div>
                                <div class="form-group">
                                    <label style="color:black">Product Name:</label>
                                    <input type="text" class="form-control" name="product_name"> 
                            </div> 
                            <!-- end col -->
           
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                <label style="color:black" for="sel1">Product Category:</label>
                                <select class="form-control" name="catList" id="sel1">
                                    <option>Select One</option>
                                    <?php
                                    $getCatList = $getCat->catList();
                                    if ($getCatList) {
                                        while ($row=$getCatList->fetch_assoc()) { ?>
                                            
                                    <option value="<?php echo $row['catId']?>"><?php echo $row['cat_name']?></option>
                                    <?php 
                                       }
                                     } 
                                    ?>
                                </select>
                        </div>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                <label style="color:black" for="sel1">Product Brand:</label>
                                <select class="form-control" name="brandList" id="sel1">
                                <option>Select One</option>
                                <?php
                                    $brandList = $getBrand->barndList();
                                    if ($brandList) {
                                        while ($row=$brandList->fetch_assoc()) { ?>
                                            
                                    <option value="<?php echo $row['id']?>"><?php echo $row['brand_name']?></option>
                                    <?php 
                                       }
                                     } 
                                    ?>
                                </select>
                        </div>
                        </div>
                        <div class="col-md-12">
                        <label style="color:black" for="sel1">Description</label>
                        <textarea  id="editor" name="description"></textarea>
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Price:</label>
                                    <input type="text" class="form-control" name="price" >
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Product Image:</label>
                                    <input type="file" name="image"  class="form-control">
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Tages:</label>
                                    <input type="text" class="form-control" name="tages" >
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                <label style="color:black" for="sel1">Author:</label>
                                <select class="form-control" name="author" id="sel1">
                                    <option>Select One</option>
                                    <option value="0">HP</option>
                                    <option value="1">Acer</option>   
                                    <option value="1">Dell</option>   
                                  
                                </select>
                        </div>
                        </div>
                        <div class="col-md-2">
                        <button type="submit" class="btn btn-info" name="submit">Submit</button>
                        </div>
                        <form>
                        <!-- end row -->
                       
                            
                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('inc/footer.php')?>
<!-- Load TinyMCE -->
	<script>
        CKEDITOR.replace( 'editor' );
</script>




                                