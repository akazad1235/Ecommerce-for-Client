<?php
if (isset($_GET['id'])) {
    $id =$_GET['id'];
}
?>

<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
 <?php include("../classes/category.php")?>
<?php $ct= new  Category()?>
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
                            
                            if ($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['update'])) {
                                $upcat = $ct->updateCategory($_POST, $id);
                                }
                            ?>
                           <?php
                           if (isset($upcat)) {
                               header('location:eco-categoryList.php');
                           }
                           ?>
                    <?php
                    $catSelect=$ct->upCatSelect($id);
                    while ($row=$catSelect->fetch_assoc()) {
                        $name=$row['cat_name'];
                    }
                    ?>
                            <form action="" method="post">
                                <div class="form-group">
                                    <label style="color:black">Product Name:</label>
                                    <input type="text" class="form-control" name="name" value="<?php echo $name?>" ><br>
                                    <button type="submit" class="btn btn-info" name="update">Update</button>
                                </form>
                                </div>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('inc/footer.php')?>
