<?php include '../classes/products.php';?>
<?php $im=new Image()?>

<?php
  if (isset($_POST['submit'])) {
      $adim=$im->addimage($_POST, $_FILES);
      echo $adim;
  }

?>



<form action="" method="post" enctype="multipart/form-data">
                                Select image to upload:
                                <input type="file" name="image" >
                                <input type="submit" value="submit" name="submit">
                            </form>

<?php
    $select=$im->selectPic();
    if ($select) {

       while ($row=$select->fetch_assoc()) {?>
       <img src="<?php echo $row['image']?>" />    
       <?php
       }
    }


?>