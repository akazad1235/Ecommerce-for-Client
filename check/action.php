<?php  $filepath=realpath(dirname(__FILE__));?>
<?php include_once($filepath.'/../classes/category.php')?>
<?php include_once($filepath.'/../classes/products.php')?>
<?php $ct = new Category()?>
<?php $pd = new Product()?>

                   <ul>
                   <?php
        if (isset($_GET['cat_id'])) {
            $id=$_GET['cat_name'];
                 
       $catList=$ct->allCatList($id);
       if (!$catList) {
           echo "Category Select Faild";
       }else{
           while($row=$catList->fetch_assoc()){?>
                       <li>
                       <label class="inline" ><a href=""><?php echo $row['brand_name']?></a><span >(<?php echo $row['total']?>)</span></label>
                       </li>
                       <?php 
           }
       }
    } 
       ?>
                   </ul>
<?php
if(isset($_POST["Get_product"])){


    echo"<div class='products products-list products-grid equal-container'>";
                            
                            //category wize get all product list
                             $getPro=$pd->getCategoryWisePds();
                            if ($getPro) {
                                while($row=$getPro->fetch_assoc()){
                                    $image=$row['image'];
                                    $proName=$row['product_name'];
                                    $price=$row['price'];
                                    echo "
                                    <div class='product-item style1 width-33 padding-0 col-md-3 col-sm-6 col-xs-6 equal-elem'>

                                    <div class='product-inner'>

                                        <div class='product-thumb'>

                                            <div class='thumb-inner'>

                                            <a href=''><img style='height:200px'  src='admin/$image' alt='p13'></a>

                                            </div>

                                            <span class='onsale'>-50%</span>

                                            <a href='' class='quick-view'>Quick View</a>

                                        </div>

                                        <div class='product-innfo'>

                                            <div class='product-name'><a href=''>$proName</a></div>

                                            <span class='price'>

                                                <ins>$$price</ins>

                                                <del>$259.00</del>

                                            </span>

                                            <span class='star-rating'>

                                                <i class='fa fa-star' aria-hidden='true'></i>

                                                <i class='fa fa-star' aria-hidden='true'></i>

                                               

                                                <span class='review'>5 Review(s)</span>

                                            </span>

                                            <div class='info-product'>

                                                <p>Hight precision lens provided</p>

                                                <p>Android Supported</p>

                                                <p>Guarantee:  1 Year</p>

                                            </div>

                                            <div class='single-add-to-cart'>

                                                <a href='' class='btn-add-to-cart'>Add to cart</a>

                                                <a href=' class='compare'><i class='flaticon-refresh-square-arrows'></i>Compare</a>

                                                <a href='' class='wishlist'><i class='fa fa-heart-o' aria-hidden='true'></i>Wishlist</a>

                                            </div>

                                        </div>

                                    </div>

                                </div>
                                    
                                    
                                    ";
                                
                                
                                }
                            }

                            
                          echo"  </div>";

}

?>
