<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->
<?php
//autolaod all classes from classes folder
 function __autoload($class_name){
    include("../classes/".$class_name.".php");
} 

?>
<?php
//create object from product classes
$productList = new Product();
$fm = new Format();

?>
            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->

            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                            <div class="page-header bg-secondary text-white">
                            <h2>All Category List</h2>      
                            </div>
                            <table id="example" class="display nowrap" style="width:100%">
					 <thead>
                            <tr>
                                <th>No</th>
                                <th>Product Name</th>
                                <th>Category </th>
                                <th>Brand </th>
                                <th>Description</th>
                                <th>Price</th>
                                <th>image</th>
                                <th>Tages</th>
                                <th>author</th>
                                <th>Action</th>   
                            </tr>
                        </thead>
                          
                        <tbody>
                         
                           <?php
                           $getAllProduct=$productList->getAllProduct();
                           //echo $getAllProduct;
                           if ($getAllProduct) {
                                $i=1;
                               while ($row = $getAllProduct->fetch_assoc()) {?>
                                   
                              
                            <tr>
                                <td><?php echo $i++ ?></td>
                                <td><?php echo $row['product_name']?></td>
                                <td><?php echo $row['cat_name']?></td>
                                <td><?php echo $row['brand_name']?></td>
                                
                                <td><?php echo $fm->sortText($row['description'],20)?></td>
                                <td>$<?php echo $row['price']?></td>
                                <td><img width='60px' height='60px' src="<?php echo $row['image']?>" /></td>
                                <td ><?php echo $row['tages']?></td>
                                <td>azad</td> 
                                <td>
                                <?php
                                if ($row['status']==0) {?>
                                    <a  class="btn btn-success">Active</a>
                                <?php
                                 }
                                else{?>
                                    <a class="btn btn-danger">Inactive</a>
                                <?php
                                }
                                ?>
                                <?php 
                                if(isset($_GET['proDltId'])){
                                    $delId=$_GET['proDltId'];
                                    $delProduct=$productList->deleteProduct($delId);
                                }
                                ?>
                                <a href="eco-productEdit.php?editProId=<?php echo $row['id']?>" class="btn btn-info" >Eidt</a> <a href="?proDltId=<?php echo $row['id']?>" onclick="return confirm('Are You Sure To Delete')" class="btn btn-danger">Delete</a></td>
                            </tr>
                            <?php }
                           }
                           ?>    

                        </tbody>
                    
                    </table>
                            </div> <!-- end col -->
                        </div>
                        <!-- end row -->
                        
                    </div> <!-- container -->

                </div> <!-- content -->

<?php include('inc/footer.php')?>

<script type="text/javascript">
$(document).ready( function () {
    $('#example').DataTable();
});
</script>

