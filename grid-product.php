<?php include('inc/header.php')?>
<!-- end HEADER -->        

<?php
 if (isset($_GET['catgoryId'])) {
     $catId=$_GET['catgoryId'];
}
if (isset($_GET['PdId'])){
     $catId2=$_GET['PdId'];
}
?>


        <!-- MAIN -->

        <main class="site-main product-list product-grid">

            <div class="container">

                <ol class="breadcrumb-page">

                    <li><a href="#">Home </a></li>

                    <li class="active"><a href="#">Grid Categorys  </a></li>

                </ol>

            </div>

            <div class="container">

                <div class="row">

                    <div class="col-md-9 col-sm-8 float-none float-right">

                        <div class="main-content">

                            <div class="promotion-banner style-3">

                                <a href="#" class="banner-img"><img src="assets/images/product/banner-product.jpg" alt="banner-product"></a>

                            </div>

                            <div class="toolbar-products">

                                <h4 class="title-product">Grid Category</h4>

                                <div class="toolbar-option">

                                    <div class="toolbar-sort">

                                        <select class="chosen-select sorter-options form-control" >

                                            <option selected="selected" value="position">Sort by popularity</option>

                                            <option value="name">Name</option>

                                            <option value="price">Price</option>

                                        </select>

                                    </div>

                                    <div class="toolbar-per">               

                                        <select class="chosen-select limiter-options form-control" >

                                            <option selected="selected" value="6">20 per page</option>

                                            <option value="15">15</option>

                                            <option value="30">30</option>

                                        </select>

                                    </div> 

                                    <div class="modes">

                                        <a href="grid-product.php?catgoryId=<?php if (isset($catId)){
                                            echo $catId;
                                        }else {
                                            if (isset($catId2)) {
                                                echo $catId2;
                                            }
                                        }?>" class="active modes-mode mode-grid" title="Grid"><i class="flaticon-squares"></i>

                                            <span>Grid</span>

                                        </a>

                                        <a href="list-product.php?catgoryId=<?php echo $catId?>" title="List" class="modes-mode mode-list"><i class="flaticon-interface"></i>

                                            <span>List</span>

                                        </a>

                                    </div>

                                </div>  

                            </div>

                            
                            <div class="products products-list products-grid equal-container">
<?php
    if (isset($catId)) {   
    $getCatWisePro=$pd->getCategoryWisePd($catId);
    if ($getCatWisePro){
        while($row=$getCatWisePro->fetch_assoc()){?>
<div class="product-item style1 width-33 padding-0 col-md-3 col-sm-6 col-xs-6 equal-elem">
   

    <div class="product-inner">
        <div class="product-thumb">
            <div class="thumb-inner">

                <a href="detail.php?proDetaildId=<?php echo $row['id']?>"><img src="admin/<?php echo $row['image']?>" alt="p8"></a>

            </div>

            <span class="onsale">-50%</span>

            <a href="#" class="quick-view">Quick View</a>

        </div>

        <div class="product-innfo">

            <div class="product-name"><a href="detail.php?proDetaildId=<?php echo $row['id']?>"><?php echo $row['product_name']?></a></div>

            <span class="price">

                <ins>৳<?php echo $row['price']?></ins>

                <del>$259.00</del>

            </span>

            <span class="star-rating">

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <span class="review">5 Review(s)</span>

            </span>


            <div class="single-add-to-cart">

                <a href="#" class="btn-add-to-cart">Add to cart</a>

                <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i>Compare</a>

                <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Wishlist</a>

            </div>

        </div>
 
   
</div>
     
    </div> 
    <?php
        }
    }
}else{
    $getCatWisePro=$pd->getCategoryWisePd2($catId2);
    if ($getCatWisePro){
        while($row=$getCatWisePro->fetch_assoc()){?>
<div class="product-item style1 width-33 padding-0 col-md-3 col-sm-6 col-xs-6 equal-elem">
   

    <div class="product-inner">
 
        <div class="product-thumb">

            <div class="thumb-inner">

                <a href="#"><img src="admin/<?php echo $row['image']?>" alt="p8"></a>

            </div>

            <span class="onsale">-50%</span>

            <a href="#" class="quick-view">Quick View</a>

        </div>

        <div class="product-innfo">

            <div class="product-name"><a href="#"><?php echo $row['product_name']?></a></div>

            <span class="price">

                <ins>৳<?php echo $row['price']?></ins>

                <del>৳259.00</del>

            </span>

            <span class="star-rating">

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <span class="review">5 Review(s)</span>
            </span>

            <div class="single-add-to-cart">

                <a href="#" class="btn-add-to-cart">Add to cart</a>

                <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i>Compare</a>

                <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i>Wishlist</a>

            </div>

        </div>
 
   
</div>
     
    </div> 
    <?php
        }
    }
}

    ?>   
</div>

             

                            <div class="pagination">

                                <ul class="nav-links">

                                    <li class="active"><a href="#">1</a></li>

                                    <li><a href="#">2</a></li>

                                    <li><a href="#">3</a></li>

                                    <li class="back-next"><a href="#">Next</a></li>

                                </ul>

                                <span class="show-resuilt">Showing 1-8 of 12 result</span>

                            </div>

                        </div>

                    </div>

            <?php include('inc/product_sideber.php')?>
            
        <?php include('inc/interestedProduct.php')?>

        </main><!-- end MAIN -->



        <!-- FOOTER -->
<?php include('inc/footer.php')?>
