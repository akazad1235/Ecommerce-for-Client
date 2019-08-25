
<?php
$host="localhost";
$user="root";
$pass="";
$dbname="shopping";
$conn=mysqli_connect($host, $user, $pass, $dbname);
if (!$conn) {
    echo"db connect faild";
}else{
    echo "suce";
}
?>

<!DOCTYPE html>
<html>
<body>

<form action="" method="post" enctype="multipart/form-data">
    Select image to upload:
    <input type="file" name="image" >
    <input type="submit" value="submit" name="submit">
</form>


</body>


</html>
<?php
if (isset($_POST['submit'])) {
    $file_name=$_FILES['image']['name'];
    $file_type=$_FILES['image']['type'];
    $file_size=$_FILES['image']['size'];
    $file_temp=$_FILES['image']['tmp_name'];
    $file_store="uploads/".$file_name;

    move_uploaded_file( $file_temp, $file_store);
    $sql="INSERT INTO image (image) values('$file_name')";
    $result=$conn->query($sql);
    if ($result) {
        echo"scucessful iamge ";
    }else{
        echo "faild";
    }
}
?>
<?php

                                $sql="SELECT * FROM image";
                                $result=$conn->query($sql);
                                if ($result->num_rows>0) {
                                    while ($row=$result->fetch_assoc()) {?>
                                    <img src="uploads/<?php echo $row['image']?>" alt='image'/>
                                <?php    }
                                
                                }
?>