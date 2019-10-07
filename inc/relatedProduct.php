<div class="block-recent-view">
<div class="container">
Related
    <div class="title-of-section">Related Your Product</div>

    <div class="owl-carousel nav-style2 border-background equal-container" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"480":{"items":2},"768":{"items":3},"992":{"items":4},"1200":{"items":5}}'>
        <?php
        //id get from index page product id
        if (isset($_GET['proDetaildId'])) {
            $catId=$_GET['proDetaildId'];
        }
        ?>
<?php
            //get product id for related product
            $relatedPro=$pd->getCatId($catId);
            if ($relatedPro) {
                while($row=$relatedPro->fetch_assoc()){
                    $catIds=$row['cat'];

                   //related product 
                $relatedPros=$pd->relatedProducts($catIds);
            if ($relatedPros) {
                while($row=$relatedPros->fetch_assoc()){
                  
                    ?>
        <div class="product-item style1">

            <div class="product-inner equal-elem">

                <div class="product-thumb">

                    <div class="thumb-inner">

                        <a href="#"><img src="admin/<?php echo $row['image']?>" alt="r1"></a>

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

                    <div class="group-btn-hover style2">

                        <a href="#" class="add-to-cart"><i class="fa fa-shopping-bag" aria-hidden="true"></i></a>

                        <a href="#" class="compare"><i class="flaticon-refresh-square-arrows"></i></a>

                        <a href="#" class="wishlist"><i class="fa fa-heart-o" aria-hidden="true"></i></a>

                    </div>

                </div>

            </div>
            
        </div>

     <?php
      }
    }
        
      }
            }
            ?>



      

    </div>

</div>

</div>