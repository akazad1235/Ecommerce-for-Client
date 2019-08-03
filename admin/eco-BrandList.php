<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->
<?php include('../classes/brand.php')?>
<?php $brandList=new Brand();?>
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
                            <h2>All Brand List</h2>      
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
                            $getbarnd=$brandList->getAllBrandlist();
                            if ($getbarnd) {
                                $i=1;
                                while ($row=$getbarnd->fetch_assoc()) {?>
                               
                            <tr>
                                <td><?php echo $i++;?></td>
                                <td><?php echo $row['brand_name']?></td>
                                <?php 
                                if ($row['status']==0) {?>
                                    <td id="status-text-active">Active</td>
                                <?php }
                                else{?>
                                <td id="status-text-inactive">Inactive</td>
                                <?php }
                                ?> 
                                <td><a  class="btn btn-info">Edit</a> <a onclick="return confirm('Are You Sure To Delete')" class="btn btn-danger">Delete</a></td>
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

