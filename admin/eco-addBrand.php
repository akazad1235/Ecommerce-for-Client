
<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
 <?php include("../classes/brand.php")?>
<?php $addBrand= new  Brand()?>
            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                            <div class="page-header bg-secondary text-white">
                            <h2>Add New Brand</h2>      
                            </div>
                            <?php
                            
                            if (isset($_POST['submit'])) {
                                $name=$_POST['brand_name'];
                                $status=$_POST['status'];
                                $brand=$addBrand->addBrand($name, $status);
                            }
                            ?>
                           <?php
                           if (isset($brand)) {
                               echo $brand;
                           }
                           ?>
                            
                            <form action="" method="post">
                                <div class="form-group">
                                    <label style="color:black">Brand Name:</label>
                                    <input type="text" class="form-control" name="brand_name" ><br>
                                    <div class="form-group">
                                    <label style="color:black" for="sel1">Status:</label>
                                    <select class="form-control" name="status" id="sel1">
                                        <option>Select One</option>
                                        <option value="0">Active</option>
                                        <option value="1">Inactive</option>
                                        
                                    </select>
                                    </div>
                                    <button type="submit" class="btn btn-info" name="submit">Submit</button>
                                </form>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('inc/footer.php')?>
