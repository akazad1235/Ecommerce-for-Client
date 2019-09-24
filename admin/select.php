<?php include('../classes/products.php')?>
<?php
//create object from product classes
$pd = new Product();
$fm = new Format();

?>

<?php
if (isset($_GET['employee_id'])) {
	$id=$_GET['employee_id'];
    $pdDetail=$pd->ProductDetailsModal($id);
    if (!$pdDetail) {
    echo "Product Selact faild";
    }else{
	while ($row=mysqli_fetch_assoc($pdDetail)) {?>
      <div class="container">
          <div class="row">
          <div class="col-md-12">
            <div class="form-group">
            <label for="pagetitle">Product Name</label>
            <input type="text" class="form-control" value="<?php echo $row['product_name']?>"  id="addPage" name="product_name" placeholder="Page Title" >
          </div>
      </div>
      <div class="col-md-6">
            <label for="pagetitle">Product Id</label>
            <input type="text"  class="form-control" id="addPage" name="product_id" value="<?php echo $row['product_id']?>" placeholder="Page Title">
    </div>
    <div class="col-md-6">
              <label for="pagetitle">Price</label>
            <input type="text" class="form-control" id="addPage" value="<?php echo $row['price']?>" name="price"placeholder="Page Title">
          </div>
          <div class="col-md-6">
              <label for="pagetitle">Main Product Image</label><br>
              <img  style="width:150px; height:100px" src="<?php echo $row['image']?>" alt="image"/>
              <input type="file" class="form-control" id="addPage" name="price"placeholder="Page Title">
              
          </div>
          <div class="col-md-6">
              <label for="pagetitle">Image 1</label><br>
              <img  style="width:150px; height:100px" src="<?php echo $row['image1']?>" alt="image"/>
              <input type="file" class="form-control" id="addPage" name="price"placeholder="Page Title">
              
          </div>
          <div class="col-md-6">
              <label for="pagetitle">Image 2</label><br>
              <img  style="width:150px; height:100px" src="<?php echo $row['image2']?>" alt="image"/>
              <input type="file" class="form-control" id="addPage" name="price"placeholder="Page Title">
              
          </div>
          <div class="col-md-6">
              <label for="pagetitle">Image 3</label><br>
              <img  style="width:150px; height:100px" src="<?php echo $row['image3']?>" alt="image"/>
              <input type="file" class="form-control" id="addPage" name="price"placeholder="Page Title">
              
          </div>

          <div class="col-md-12">
          <div class="form-group">
				<label for="pagebody">Prdcut Description</label>
				<textarea type="text" name="editor" class="form-control"  id="pagebody" placeholder="Page Body"><?php echo $row['description']?></textarea>
			  </div>
          </div>
          <div class="col-md-6">
          <div class="form-group">
				<label for="pagebody">Product Sort Description</label>
				<textarea type="text" name="editor1" class="form-control" id="pagebody" placeholder="Page Body"><?php echo $row['sort_description']?></textarea>
			  </div>
          </div>
          <div class="col-md-6">
          <div class="form-group">
				<label for="pagebody">Product Specification</label>
				<textarea type="text" name="editor2" class="form-control" id="pagebody" placeholder="Page Body"><?php echo $row['specifications']?></textarea>
			  </div>
          </div>


          </div>
        </div>	 
   <?php
    }
}
}

?>
<script>
        CKEDITOR.replace( 'editor' );
</script>
<script>
        CKEDITOR.replace( 'editor1' );
</script>
<script>
        CKEDITOR.replace( 'editor2' );
</script>