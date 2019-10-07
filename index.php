
<?php include('inc/header.php');?>
        <!-- MAIN -->

        <main class="site-main">
            <div class="block-slide">
                <div class="container">
                    <div class="main-slide slide-opt-3">

                        <div class="owl-carousel nav-style5" data-nav="true" data-autoplay="false" data-dots="true" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>

                            <div class="item-slide item-slide-1">

                                <div class="container">

                                    <div class="slide-desc slide-desc-1">

                                        <div class="p-primary">The vision is brighter than ever</div>

                                        <p>Lorem ipsum dolor sit amet  adipiscing elit luctus mi .</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>                            

                                    </div>

                                </div>

                            </div>

                            <div class="item-slide item-slide-2">

                                <div class="container">

                                    <div class="slide-desc slide-desc-2">

                                        <div class="p-primary">Back<br>To the<span class="number">50<span>s</span></span></div>

                                        <p class="p-second">Free Delivery</p>

                                        <p>On Online Purchases of Small Appliances</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>                            

                                    </div>

                                </div>

                            </div>

                            <div class="item-slide item-slide-3">

                                <div class="container">

                                    <div class="slide-desc slide-desc-3">

                                        <div class="p-primary">Say hello to the future</div>

                                        <p>Find appliances that consume more money than others.</p>

                                        <a href="#" class="btn-shop-now">Shop Now</a>                            

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                    <div class="promotion-banner banner-slide style-4 hidden-sm hidden-xs">

                        <a href="#" class="banner-img"><img src="assets/images/home1/banner1.jpg" alt="banner1"></a>

                    </div>

                    <div class="promotion-banner banner-slide style-4 hidden-sm hidden-xs">

                        <a href="#" class="banner-img"><img src="assets/images/home1/banner2-1.jpg" alt="banner2"></a>

                        <a href="#" class="btn-shop-now">Shop now</a>

                    </div>

                </div>

            </div>

            <div class="block-top-categori">

                <div class="container">

                    <div class="title-of-section">Top Categories This Week</div>

                    <div class="owl-carousel nav-style2" data-nav="true" data-autoplay="false" data-dots="true" data-loop="true" data-margin="20" data-responsive='{"0":{"items":1},"360":{"items":2},"500":{"items":3},"992":{"items":5}}'>
                    
                    <?php
                    //top category select
                    $getCatName=$pd->GetTopCategory();
                    if ($getCatName) {
                        while ($row=$getCatName->fetch_assoc()) {?>
                            
                     
                        <div class="block-top-categori-item">

                            <a href="grid-product.php?catgoryId=<?php echo $row['cat_name']?>" ><img style="width:150px; height:150px  "  src="admin/<?php echo $row['image']?>" alt="c1"></a>  

                            <div class="block-top-categori-title"><?php echo $row['cat_name']?></div>

                        </div>
                   <?php
                    }
                }
                ?>

                    </div>

                </div>

            </div>

            <div class="block-promotion-banner">

                <div class="container">

                    <div class="row">

                        <div class="col-sm-7">

                            <div class="promotion-banner style-5">

                                <a href="#" class="banner-img"><img src="assets/images/home1/banner3.jpg" alt="banner3"></a>

                            </div>

                        </div>

                        <div class="col-sm-5">

                            <div class="promotion-banner style-5">

                                <a href="#" class="banner-img"><img src="assets/images/home1/banner4.jpg" alt="banner4"></a>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="block-feature-product">

                <div class="container">

                    <div class="title-of-section">Featured Products</div>

                    <div class="tab-product tab-product-fade-effect">

                        <ul class="box-tabs nav-tab">

                            <li class="active"><a data-animated="" data-toggle="tab" href="#tab-1">All Products </a></li>

                            <li><a data-animated="fadeInLeft" data-toggle="tab" href="#tab-2">Laptop</a></li>

                            <li><a data-animated="zoomInUp" data-toggle="tab" href="#tab-2">Top 100 Best Seller</a></li>

                            <li><a data-animated="fadeInRight" data-toggle="tab" href="#tab-1">Electronics</a></li>

                        </ul>

                        <div class="tab-content">

                            <div class="tab-container">

                                <div id="tab-1" class="tab-panel active">

                                    <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>

                             <?php
                             $allPro=$pd->AllProduct();
                             if ($allPro) {
                                while ($row=$allPro->fetch_assoc()) {?>       
                                        <div class="owl-one-row">  
                                            <div class="product-item style1">

                                                <div class="product-inner equal-elem">

                                                    <div class="product-thumb">

                                                        <div class="thumb-inner">

                                                            <a href="detail.php?proDetaildId=<?php echo $row['id']?>"><img style="height:200px"  src="admin/<?php echo $row['image']?>" alt="f6"></a>

                                                        </div>

                                                        <span class="onnew style2">New</span>
                                
                                                        <a href="#" class="wishlist">Quick View</a>   

                                                    </div>

                                                    <div class="product-innfo">

                                                        <div class="product-name"><a href="detail.php?proDetaildId=<?php echo $row['id']?>"><?php echo $row['product_name']?></a></div>

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
                                                    <?php
                                                    //future try to add cart
                                                    /* if ($_SERVER['REQUEST_METHOD'] == "POST" && isset($_POST['submit'])) {
                                                    $addCart = $cart->addCart();
                                                    } */
                                                    ?>    
                                                    
                                                        <div class="group-btn-hover">

                                                            <div class="inner">

                                                                <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>
                                                                <a href="detail.php?proDetaildId=<?php echo $row['id']?>" type="submit" name="addCart" class="add-to-cart">Buy Now</a>
                                                            
                                                                <a href="" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                                                            </div>

                                                        </div>
                                                    
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <?php
                                }
                            }
                                        ?>
                                        

                                    </div>

                                </div>

                                <div id="tab-2" class="tab-panel">

                                    <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>

                                <?php
                                $getPro=$pd->getProduct(); 
                                if ($getPro) {
                                    while ($row=$getPro->fetch_assoc()) {?> 

                                    <div class="owl-one-row">

<div class="product-item style1">

    <div class="product-inner equal-elem">

        <div class="product-thumb">

            <div class="thumb-inner">

                <a href="#"  ><img style="height:200px" src="admin/<?php echo $row['image']?>" alt="f1"></a>

            </div>

            <a href="#" class="quick-view">Quick View</a>

        </div>

        <div class="product-innfo">

            <div class="product-name"><a href="#"><?php echo $row['product_name']?></a></div>

            <span class="price price-dark">

                <ins><?php echo $row['price']?></ins>

            </span>

            <span class="star-rating">

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <i class="fa fa-star" aria-hidden="true"></i>

                <span class="review">5 Review(s)</span>

            </span>

            <div class="group-btn-hover">

                <div class="inner">

                    <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                    <a href="#" class="add-to-cart">Add to cart</a>

                    <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                </div>

            </div>

        </div>

    </div>
</div>


</div>
  <?php 
                                   }
                                }
                                ?>                                                                        
                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>

            </div>

            <div class="block-sale-product full-width block-background">

                <div class="container">

                    <div class="title-of-section">Sale Products</div>

                    <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"1200":{"items":4}}'>

                        <div class="product-item style1">

                            <div class="product-inner equal-elem">

                                <div class="product-thumb">

                                    <div class="thumb-inner">

                                        <a href="#"><img src="assets/images/home1/s1.jpg" alt="s1"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Vegan Kitchen Essentials</a></div>

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

                                        <a href="#"><img src="assets/images/home1/s2.jpg" alt="s2"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo"> 

                                    <div class="product-name"><a href="#">Electrolux Washing Machine.</a></div>

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

                                        <a href="#"><img src="assets/images/home1/s3.jpg" alt="s3"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Friteuse Tristar FR6929 1,75 l</a></div>

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

                                        <a href="#"><img src="assets/images/home1/s4.jpg" alt="s4"></a>

                                    </div>

                                    <span class="onsale">-50%</span>

                                    <a href="#" class="quick-view">Quick View</a>

                                </div>

                                <div class="product-innfo">

                                    <div class="product-name"><a href="#">Smartphone MTK6737 Quad Core.</a></div>

                                    <span class="price">

                                        <ins>$229.00</ins>

                                        <del>$259.00</del>

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
                        <div class="owl-carousel nav-style3" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="2" data-responsive='{"0":{"items":1},"320":{"items":2},"480":{"items":3},"768":{"items":4},"992":{"items":5},"1200":{"items":5}}'>
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