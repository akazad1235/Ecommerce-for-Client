<?php include('inc/header.php')?>
<!-- end HEADER -->        

<?php
if (isset($_GET['catgoryId'])) {
    $catId=$_GET['catgoryId'];
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

                                        <a href="grid-product.php" class="active modes-mode mode-grid" title="Grid"><i class="flaticon-squares"></i>

                                            <span>Grid</span>

                                        </a>

                                        <a href="list-product.php" title="List" class="modes-mode mode-list"><i class="flaticon-interface"></i>

                                            <span>List</span>

                                        </a>

                                    </div>

                                </div>  

                            </div>

                            

                              
                            <div class="products products-list products-grid equal-container">
                            <?php
                            //category wize get all product list
                             $getPro=$pd->getCategoryWisePd($catId);
                            if ($getPro) {
                                while($row=$getPro->fetch_assoc()){?>
                                <div class="product-item style1 width-33 padding-0 col-md-3 col-sm-6 col-xs-6 equal-elem">

                                    <div class="product-inner">

                                        <div class="product-thumb">

                                            <div class="thumb-inner">

                                                <a href="#"><img style="height:200px"  src="admin/<?php echo $row['image']?>" alt="p13"></a>

                                            </div>

                                            <span class="onsale">-50%</span>

                                            <a href="#" class="quick-view">Quick View</a>

                                        </div>

                                        <div class="product-innfo">

                                            <div class="product-name"><a href="#"><?php echo $row['product_name']?></a></div>

                                            <span class="price">

                                                <ins>$<?php echo $row['price']?></ins>

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

                                            <div class="info-product">

                                                <p>Hight precision lens provided</p>

                                                <p>Android Supported</p>

                                                <p>Guarantee:  1 Year</p>

                                            </div>

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

            <div class="block-recent-view">

                <div class="container">
                INTERESTED
                    <div class="title-of-section">You may be also interested</div>

                    <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r1.jpg" alt="r1"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Women Hats</a></div>

                                    <span class="price">

                                        <ins>$229.00</ins>

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

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r2.jpg" alt="r2"></a>

                                    </div>

                                    <span class="onnew">new</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo"> 

                                    <div class="product-name"><a href="#">Basketball Sports Audio & Theater</a></div>

                                    <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                    <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r3.jpg" alt="r3"></a>

                                    </div>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Dark Green Prada Sneakers</a></div>

                                    <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                    <span class="star-rating">

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <i class="fa fa-star" aria-hidden="true"></i>

                                        <span class="review">5 Review(s)</span>

                                    </span>

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r4.jpg" alt="r4"></a>

                                    </div>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Clutches in Men's Bags for Men</a></div>

                                    <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r5.jpg" alt="r5"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Parka With a Hood</a></div>

                                    <span class="price">

                                        <ins>$229.00</ins>

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

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/r6.jpg" alt="r6"></a>

                                    </div>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Smartphone MTK6737 Quad Core.</a></div>

                                    <span class="price price-dark">

                                        <ins>$229.00</ins>

                                    </span>

                                    <div class="group-btn-hover style2">

                                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="block-section-brand">
                <div class="container">
                    <div class="section-brand style1">
                        <div class="owl-carousel nav-style3" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="2" data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":4},"1000":{"items":6}}'>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                            <a href="#" class="item-brand"><img src="assets/images/brand1.jpg" alt="brand1"></a>
                        </div>
                    </div>
                </div>
            </div>

        </main><!-- end MAIN -->



        <!-- FOOTER -->
<?php include('inc/footer.php')?>