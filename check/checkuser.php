<?php  $filepath=realpath(dirname(__FILE__));?>
<?php include_once($filepath.'/../lib/database.php')?>
<?php include_once($filepath.'/../classes/ajax.php')?>



<?php $ajPro = new ajaxProject()?>

<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	$username=$_POST['username'];
	$user=$ajPro->checkUserName($username);
	echo $user;

}
