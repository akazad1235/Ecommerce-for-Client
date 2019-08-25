<?php include('lib/database.php')?>
<?php include('classes/product.php')?>
<?php $db=new Database()?>
<?php $pd=new Product()?>
<?php
$pds=$pd->getpro();
if ($pds) {
    while ($row=$pds->fetch_assoc()) {?>
        <img src="admin/<?php $row['image']?>" alt="image"/>
        <?php echo $row['product_name']?>
    <?php
    }
}
?>
