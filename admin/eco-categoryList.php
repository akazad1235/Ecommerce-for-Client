<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->
<?php include('../classes/category.php')?>
<?php $catList=new Category();?>
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
                                <th>Serial No</th>
                                <th>Category Name</th>
                                <th>Status</th>
                                <th>Action</th>
                                
                            </tr>
                        </thead>
                          
                        <tbody>
                            <?php
                            $getcat=$catList->getAllCatlist();
                            if ($getcat) {
                                $i=1;
                                while ($row=$getcat->fetch_assoc()) {?>
                               
                            <tr>
                                <td><?php echo $i++;?></td>
                                <td><?php echo $row['cat_name']?></td>
                                <?php 
                                if ($row['status']==0) {?>
                                    <td id="status-text-active">Active</td>
                                <?php }
                                else{?>
                                <td id="status-text-inactive">Inactive</td>
                                <?php }
                                ?> 
                              
                                <td><a  class="btn btn-info">Edit</a> <a href="?delId=<?php echo $row['catId']?>" onclick="return confirm('Are You Sure To Delete')" class="btn btn-danger">Delete</a></td>
                            </tr>

                                 
                                <?php }
                            }
                            ?>
                            <?php
                            //catagory delete process
                            //category delete get id
                            if (isset($_GET['delId'])) {
                                $id=$_GET['delId'];
                            
                            $catDlt = $catList->catDelete($id);
                            echo $catDlt;
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

