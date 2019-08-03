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
                         
                               
                            <tr>
                                <td>1</td>
                                <td>Samsung Phone</td>
                                <td>phone</td>
                                <td>Samsung</td>
                                <td>sdfsdfsf</td>
                                <td>core 4</td>
                                <td>ikmage</td>
                                <td>ikmage</td>
                                <td>azad</td> 
                                <td><a  class="btn btn-success">Active</a> <a class="btn btn-info" >Eidt</a> <a onclick="return confirm('Are You Sure To Delete')" class="btn btn-danger">Delete</a></td>
                            </tr>
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

