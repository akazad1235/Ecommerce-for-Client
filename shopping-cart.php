
<?php include('inc/header.php')?>
<!-- end HEADER -->

    
    <!-- MAIN -->
    <main class="site-main shopping-cart">
        <div class="container">
            <ol class="breadcrumb-page">
                <li><a href="#">Home </a></li>
                <li class="active"><a href="#">Shopping Cart</a></li>
            </ol>
        </div>
        <?php
        if (isset($_POST['submit'])) {
            $qty=$_POST['quantity'];
            $cartId=$_POST['cartId'];    
            $updateQty=$cart->updateQty($qty,$cartId );
            echo $updateQty;
        
    }
        ?>
    <?php 
    if (isset($_GET['catDltId'])) {
        $id=$_GET['catDltId'];
        $delCart=$cart->cartDelete($id);
        echo $delCart;
    }
    ?>



 
        <div class="container">
            <div class="row">
                <div class="col-md-9">
                        <div class="table-cart">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th class="tb-image"></th>
                                    <th class="tb-product">Product Name</th>
                                    <th class="tb-price">Unit Price</th>
                                    <th class="tb-qty">Qty</th>
                                    <th class="tb-qty"></th>
                                    <th class="tb-total">SubTotal</th>
                                    <th class="tb-remove">Action</th>
                                </tr>
                                </thead>
                                <tbody>
                <?php
                   //get all cart product by session wize id
                   $getCart=$cart->getAllCart();
                   if ($getCart) {
                    $sum=0;
                    $qty=0;
                   while ($row=$getCart->fetch_assoc()) {?>
                        
                 
                                <tr>
                                    <td class="tb-image"><a href="#" class="item-photo"><img width='50' src="admin/<?php echo $row['image']?>"
                                                                                            alt="cart"></a></td>
                                    <td class="tb-product">
                                        <div class="product-name"><a href="#"><?php echo $row['product_name']?></a></div>
                                    </td>
                                    <td class="tb-price">
                                        <span class="price">৳<?php echo $row['price']?></span>
                                    </td>

                                    <form action=""  method="post">
                                    <td class="tb-qty">
                                        <div class="quantity">
                                        
                                            <div class="buttons-added">
                                             
                                            <input type="text" name="quantity" value="<?php echo $row['qty']?>" title="Qty" class="input-text qty text"
                                                       size="1">
                                            <input type="hidden" name="cartId"  value="<?php echo $row['cartId']?>"/> 
                                                <a href="#" class="sign plus"><i class="fa fa-plus"></i></a>
                                                <a href="#" class="sign minus"><i class="fa fa-minus"></i></a>
                                            </div>
                                            
                                        </div>
                                    </td>
                                    <td class="tb-remove">
                                        <button  type="submit" name="submit" class="action-remove" title="Update your Cart"><span><i class="fa fa-edit" aria-hidden="true"></i></span></button>
                                    </td>
                                  </form>
                                    

                                  <td class="tb-total">
                                        <span class="price">
                                        <?php
                                             $total=$row['price'] * $row['qty'];
                                            echo '৳'.$total;
                                            ?>
                                        </span>
                                    </td>
                                    <td class="tb-remove">
                                        <a  href="?catDltId=<?php echo $row['cartId']?>" class="action-remove" title="Update your Cart"><button><span><i class="fa fa-times" aria-hidden="true"></i></span></button></a>
                                    </td>
                                    
                                </tr>
                            <?php
                            $qty=$qty+$row['qty'];
                            $sum=$sum+$total;
                            Session::set("qty", $qty);
                            Session::set("sum", $sum);
                   }?>
              
                           
                                </tbody>
                            </table>
                        </div>
                        <div class="cart-actions">
                            <a href="index.php"><button type="" class="btn-continue">
                                <span>Continue Shopping</span>
                            </button></a>
                           <!-- <button type="submit" name="submit" class="btn-clean">
                                <span>Update Shopping Cart</span>
                            </button>
                            <button type="submit" class="btn-update">
                                <span>Clear Shopping Cart</span>
                            </button>-->
                        </div>
                    
                </div>
                <div class="col-md-3">
                    <div class="order-summary">
                        <h4 class="title-shopping-cart">Order Summary</h4>
                        <div class="checkout-element-content">
                            <span class="order-left">Subtotal:<span>৳<?php echo $sum?></span></span>
                            <span class="order-left">Vat:<span>10%</span></span>
                            <span class="order-left">Total:<span>
                                <?php
                                 $vat=$sum * 0.1;
                                 $total=$sum+$vat;
                                 echo "৳".$total;
                                 ?>
                            </span></span>
                            <ul>
                                <li><label class="inline"><input type="checkbox"><span class="input"></span>I have promo
                                    code</label></li>
                            </ul>
                            <a href="checkout.php"><button  type="submit" class="btn-checkout">
                                <span>Check Out</span>
                            </button></a>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
        <?php   
                             //End of if condition
                                 }else{?>
                                     <div class="alert alert-danger alert-dismissible fade in">
                                     <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                 <strong><?php echo "You have NO items in your shopping cart. !!"; ?></strong>
                                 
                                 </div>
                                     
                                     <div class="container">
                                      <div class="cart-actions">
                           <a href="index.php"> <button class="btn-continue">
                                <span>Continue Shopping</span>
                            </button></a>
                          
                        </div>
                    </div>
                            <?php
                       
                                 }
                 
                ?>
        <div class="block-recent-view">
            <div class="container">
                <div class="title-of-section">You may be also interested</div>
                <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true"
                     data-autoplay="false" data-dots="false" data-loop="true" data-margin="0"
                     data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>
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
                    <div class="owl-carousel nav-style3" data-nav="true" data-autoplay="false" data-dots="false"
                         data-loop="true" data-margin="2"
                         data-responsive='{"0":{"items":1},"480":{"items":2},"600":{"items":4},"1000":{"items":6}}'>
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