
<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
 <?php include("../classes/category.php")?>
<?php $addcat= new  Category()?>
            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                            <div class="page-header bg-secondary text-white">
                            <h2>Add New Category</h2>      
                            </div>
                            <?php
                            
                            if (isset($_POST['submit'])) {
                                $name=$_POST['cat_name'];
                                $cat=$addcat->addCategory($name);
                            }
                            ?>
                           <?php
                           if (isset($cat)) {
                               echo $cat;
                           }
                           ?>
                            
                            <form action="" method="post">
                                <div class="form-group">
                                    <label style="color:black">Product Name:</label>
                                    <input type="text" class="form-control" name="cat_name" ><br>
                                    <button type="submit" class="btn btn-info" name="submit">Submit</button>
                                </form>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('inc/footer.php')?>
