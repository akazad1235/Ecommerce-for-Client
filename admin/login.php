<?php include('../classes/adminlogin.php')?>
<?php 
    $adminlog = new Admin();
?>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta charset="utf-8" />
        <title>UBold - Responsive Admin Dashboard Template</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <!-- App favicon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">

        <!-- Plugins css -->
        <link href="assets/libs/flatpickr/flatpickr.min.css" rel="stylesheet" type="text/css" />

        <!-- App css -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
        <link href="assets/css/style.css" rel="stylesheet" type="text/css" />
        
    </head>

    <body>
    <?php
    if ($_SERVER['REQUEST_METHOD']=='POST') {
        $adminUser=$_POST['username'];
        $adminPass=md5($_POST['password']);
        $loginChk=$adminlog->adminLogin( $adminUser, $adminPass);
        
    }
    ?>
        <div class="container">
            <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-4">
            <form action="" method="post">
                <h2>Admin Login</h2>
           <span style="color: red; font-size:20px">
           <?php
            if(isset($loginChk)) {
                echo $loginChk;
            }
            ?>
        </span>
            <div class="form-group">
                <label for="text">Email or Username:</label>
                <input type="text" class="form-control" name='username' id="email">
            </div>
            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" name='password' id="pwd">
            </div>
            
            <button type="submit" class="btn btn-info" name='submit'>Submit</button>
            </form>
            </div>
            <div class="col-md-4"></div>
        </div>
    </div>
    </body>
</html>
