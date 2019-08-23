<?php
 include_once('../lib/database.php');
 include_once('../lib/session.php');
 Session::checkLogin();
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
}