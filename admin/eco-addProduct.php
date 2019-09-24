<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
<head> <!-- style add for success or other message -->
<link href="assests/css/style.css" rel="stylesheet" />
</head>
<?php include('../classes/products.php')?>
<?php include('../classes/category.php')?>
<?php include('../classes/brand.php')?>
<?php $pd=new Product()?>
<?php $getCat=new Category()?>
<?php $getBrand=new Brand()?>

                <div class="content-page">
                <div class="content">
                    <!-- Start Content-->
                    <div class="container-fluid">
                    <?php
   function getRanNumber()
   {
   $digits_needed=4;
   $random_number=''; // set up a blank string
   $count=0;
   while ( $count < $digits_needed ) {
   $random_digit = mt_rand(0, 9);
   $random_number .= $random_digit;
   $count++;
   }
   return "BI.".$random_number;
   }
   ?> 
                    <?php
            if (isset($_POST['submit'])) {
            $addPD=$pd->addProduct($_POST, $_FILES, getRanNumber());
            echo $addPD;
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
                                    <label style="color:black">Available status:</label>
                                    <select class="form-control" name="available" id="sel1">
                                    <option name="avableable">Select Option</option>
                                    <option value="0">In Stock</option>
                                    <option value="0">Out of stock</option>
                                    </select>
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Price:</label>
                                    <input type="text" class="form-control" name="price" >
                            </div> <!-- end col -->
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
                                    <label style="color:black">Main Product Image:</label>
                                    <input type="file" name="image"  class="form-control">
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Main Product Image:</label>
                                    <input type="file" name="image1"  class="form-control">
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Main Product Image:</label>
                                    <input type="file" name="image2"  class="form-control">
                            </div> <!-- end col -->
                        </div>
                        <div class="col-md-6">
                        <div class="form-group">
                                    <label style="color:black">Main Product Image:</label>
                                    <input type="file" name="image3"  class="form-control">
                            </div> <!-- end col -->
                        </div>
                        
                        

                        <div class="col-md-6">
                        <label style="color:black" for="sel1">Specification</label>
                        <textarea  id="editor1" name="specification"></textarea>
                        </div>
                        <div class="col-md-6">
                        <label style="color:black" for="sel1">Product Sort Description</label>
                        <textarea  id="editor2" name="sortDescription"></textarea>
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
                        
                        <div class="col-md-2" style="float:left">
                        <button type="submit" class="btn btn-info" name="submit">Submit</button>
                        </div>
                        <div class="col-md-6"></div>
                        <form>
                        <!-- end row -->
                       
                            
                    </div> <!-- container -->

                </div> <!-- content -->
                                    
<?php include('inc/footer.php')?>
<!-- Load TinyMCE -->
	<script>
        CKEDITOR.replace( 'editor' );
</script>
<script>
        CKEDITOR.replace( 'editor1' );
</script>
<script>
        CKEDITOR.replace( 'editor2' );
</script>



                                