<link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>

    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="assets/css/pe-icon-7-stroke.css">

    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">

    <link rel="stylesheet" type="text/css" href="assets/css/chosen.css">

    <link rel="stylesheet" type="text/css" href="assets/css/jquery.bxslider.css">

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,600i,700,700i" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700" rel="stylesheet">
    <script type="text/javascript" src="assets/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
<?php
 include_once('../lib/database.php');
 include_once('../lib/session.php');
 include_once('../config/config.php');
 include_once('../helpers/format.php');
?>  
<?php
        class Admin{
    private $db;
    private $fm;

    public function __construct()
    {
        $this->db=new Database();
        $this->fm=new Format();
    }

    public function adminLogin($adminUser, $adminPass){
        $username=$this->fm->validation($adminUser);
        $password=$this->fm->validation($adminPass);

        $username=mysqli_real_escape_string($this->db->link, $adminUser);
        $password=mysqli_real_escape_string($this->db->link, $adminPass);

        if (empty($username) || empty($password)) {
            $chk = "Field Must Not Be Empty";
            return $chk;
        }else{
            $query="SELECT * FROM tbl_admin where username='$username' and password='$password'";
            $result=$this->db->select($query);
            if ($result !=false) {
                $value= $result->fetch_assoc();
                Session::set("login", true);
                Session::set("adminId", $value['id']);
                Session::set("adminUser", $value['username']);
                header("location:index.php");
            }else{
                $errorMsg="Username or Password not match!!";
                return $errorMsg;
            }
        }
    }

    public function Adduser($data){
        $name=$data['name'];
        $username=$data['username'];
        $email=$data['email'];
        $acc_type=$data['acc_type'];
        $user_role=$data['role'];
        $password=md5($data['password']);
        if(empty($name) || empty($username) || empty($email)  || empty($password)){
            $chk="Field Must not be empty";
            return $chk;
        }else{
        $query1="SELECT username, eamil FROM tbl_admin where username='$username' and eamil='$email'";
        $result=$this->db->select($query1);
        if ($result !==false) {
            $chkMsg="user name or email already exits";
            return $chkMsg;

        }else{
            $query="INSERT INTO tbl_admin(name, username, eamil,  password, user_role, account_type) values('$name','$username', '$email', '$password', '$user_role', '$acc_type')";
            $result=$this->db->insert($query);
            if ($result) {
                $successMsg="<div class='alert alert-success'>Usr Added Success</div>";
                return $successMsg;
            }else{
                $errorMsg="<div class='alert alert-warning'>User Add Faild</div>";
                return $errorMsg;
            }
        }
    }
        

    }


}