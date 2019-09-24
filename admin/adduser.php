<?php include('inc/header.php')?>
            <!-- end Topbar -->
<?php include('inc/leftsideber.php')?>
            <!-- Left Sidebar End -->

            <!-- ============================================================== -->
            <!-- Start Page Content here -->
            <!-- ============================================================== -->
            <?php include('../classes/adminlogin.php')?>
<?php 
    $adminlog = new Admin();
?>
    <?php
     if (isset($_POST['submit'])) {
       
        $add=$adminlog->Adduser( $_POST);
        
    }  
    ?>
            <div class="content-page">
                <div class="content">

                    <!-- Start Content-->
                    <div class="container-fluid">
                        
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                            <div class="container">
                            <h2 class="bg-dark text-white">Add User </h2><br>
                            <?php
             if(isset($add)) {   
               echo $add;
            } 
            ?>
                            <form action="" method="post">              
            <div class="row">
            
            
             <div class="col-md-4">
             <div class="form-group">
                <label for="text">Name:</label>
                <input type="text" class="form-control" name='name' id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" name='password' id="pwd">
            </div>
             </div>   
            <div class="col-md-4">
            
               
           <span style="color: red; font-size:20px">
           
        </span>
        <div class="form-group">
                <label for="text">Username:</label>
                <input type="text" class="form-control" name='username' id="email">
            </div>
            
            
            
            <div class="form-group">
									  <label for="sel1">Account Type:</label>

									  <select class="form-control" id="sel1"  name="acc_type">
									    <option>Select User Role</option>	
									    <option value="0">Admin</option>
									    <option value="1">Product Post</option>
									    <option value="2">Product list</option>
									   
									  </select>
									</div> 
            </div>
            <div class="col-md-4">
            <div class="form-group">
                <label for="text">Email:</label>
                <input type="text" class="form-control" name='email' id="email">
            </div>

            <div class="form-group">
                    <label for="sel1">User Access Permission:</label>
                    <select class="form-control" id="sel1"  name="role">
                    <option>Select User Role</option>	
                    <option value="0">Active</option>
                    <option value="1">Inactive</option>
                    </select>
                </div>
            <button type="submit" style="float:right" class="btn btn-info" name='submit'>Add User</button>
            </div>
        </div>
        </form>
    </div>
    

    

                            </div> <!-- end col -->
                           
            
        
                        <!-- end row -->
                     
    
                    </div> <!-- container --><br>
                <section>
                    <div class="container">
                    <div class="row">
                         <div class="col-md-12" >
                         <table id="example" class="display nowrap" style="width:100%">
					 <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Username </th>
                                <th>Email </th>
                                <th>Account Type</th>
                                <th>Access Permission</th>
                                <th>Status</th>
                                <th>Action</th>   
                            </tr>
                        </thead>
                      
                        <tbody>
                        <td>d</td>
                          <td>d</td>
                          <td>d</td>
                          <td>d</td>
                          <td>d</td>
                          <td>d</td>
                          <td>d</td>
                          <td>d</td>
                        </tbody>
                         </table>
                         </div>
                     </div>
                        </div>
                    </div>
                </section>
                </div> <!-- content -->

        
<?php include('inc/footer.php')?>

<script type="text/javascript">
$(document).ready( function () {
    $('#example').DataTable();
});
</script>
                                
