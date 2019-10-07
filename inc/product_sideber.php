
<?php // $ct = new Category()?>
<?php
  if (isset($_GET['catgoryId'])){   
       $id=$_GET['catgoryId'];
 }  
  if (isset($_GET['PdId'])){   
      $id2=$_GET['PdId'];
 }  
?>    
                   <div class="col-md-3 col-sm-4">

                        <div class="col-sidebar">

                            <div class="filter-options">

                                <div class="block-title">Shop by</div>

                                <div class="block-content">

                                    <div class="filter-options-item filter-categori">

                                        <div class="filter-options-title">Categories</div>
                                        
                                       
                        
                   
                    <div class="filter-options-content" >
                    <?php
                       
                                
                   
                    if (isset($id) ) {
                        $catList=$ct->allCatList($id);
                        if (!$catList) {
                            echo "Category Select Faild 1";
                        }else{
                            while($row=$catList->fetch_assoc()){?>   
                            <li>
                           <label class="inline" ><a href="?PdId=<?php echo $row['brandId']?>"><?php echo $row['brand_name']?></a><span >(<?php echo $row['total']?>)</span></label>
                           </li>
                           <?php 
                            }
                        }
                    }   else{
                        $catList=$ct->allCatList2($id2);
                        if (!$catList) {
                            echo "Category Select Faild 2";
                        }else{
                            while($row=$catList->fetch_assoc()){?>   
                            <li>
                           <label class="inline" ><a href="?PdId=<?php echo $row['brandId']?>"><?php echo $row['brand_name']?></a><span >(<?php echo $row['total']?>)</span></label>
                           </li>
                           <?php 
                            }
                        }  
                    } 
                
                    
                    ?>
                   </ul>
                              
                            </div>
                                      
                                    
                     
                      </div>                 
                       

                                    <div class="filter-options-item filter-brand">

                                        <div class="filter-options-title">Brand</div>

                                        <div class="filter-options-content">

                                            <ul>

                                                <li><label class="inline" ><input type="checkbox"><span class="input"></span>Cameras</label></li>

                                                <li><label class="inline" ><input type="checkbox"><span class="input"></span>Smartphone</label></li>

                                                <li><label class="inline" ><input type="checkbox"><span class="input"></span>Printer & Ink</label></li>

                                                <li><label class="inline" ><input type="checkbox"><span class="input"></span>Game & Consoles</label></li>

                                                <li><label class="inline" ><input type="checkbox"><span class="input"></span>Sound & Speaker</label></li>

                                            </ul>

                                        </div>

                                    </div>

                                    <div class="filter-options-item filter-price">

                                        <div class="filter-options-title">Price</div>

                                        <div class="filter-options-content">

                                            <div class="price_slider_wrapper">

                                                <div data-label-reasult="Price:" data-min="0" data-max="3000" data-unit="$" class="slider-range-price " data-value-min="85" data-value-max="2000">

                                                    <span class="text-right">Filter</span>

                                                </div>

                                                <div class="price_slider_amount">

                                                    <div class="price_label">

                                                        Price: <span class="from">$85</span>-<span class="to">$2000</span>

                                                    </div>



                                                </div>



                                            </div>

                                        </div>

                                    </div>
                                </div>

                            </div>

                            <div class="block-banner-sidebar">

                                <a href="#"><img src="assets/images/product/banner-sidebar.jpg" alt="banner-sidebar"></a>

                            </div>

                            <div class="block-latest-roducts">

                                <div class="block-title">Latest Products</div>

                                <div class="block-latest-roducts-content">

                                    <div class="owl-carousel nav-style2" data-nav="true" data-autoplay="false" data-dots="false" data-loop="true" data-margin="0" data-responsive='{"0":{"items":1},"600":{"items":1},"1000":{"items":1}}'>
                                    
                                        <div class="owl-ones-row">
                                     

                                       <?php
                                     //latest product for sideber
                                    $getLatestP=$pd->getLatestPro();
                                    if ($getLatestP) {
                                        while($row=$getLatestP->fetch_assoc()){?>
                                            <div class="product-item style1">

                                                <div class="product-inner">

                                                    <div class="product-thumb">

                                                        <div class="thumb-inner">

                                                            <a href="detail.php?proDetaildId=<?php echo $row['id']?>"><img style='width:50px' src="admin/<?php echo $row['image']?>" alt="p4"></a>

                                                        </div>

                                                    </div>

                                                    <div class="product-innfo">

                                   <div class="product-name"><a href="detail.php?proDetaildId=<?php echo $row['id']?>"><?php echo $row['product_name']?></a></div>

                                                        <span class="price">

                                                            <ins>৳<?php  echo $row['price']?></ins>

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

                                                    </div>    

                                                </div>

                                            </div>
                                             <?php
                                        }
                                    }

                                     ?>
                                        </div> 

                                        <div class="owl-ones-row">
                                        
                                         <?php
                                         //latest product for sideber
                                        $getLatestP=$pd->getLatestPro2();
                                        if ($getLatestP) {
                                            while($row=$getLatestP->fetch_assoc()){?>
                                        
                                           
                                            
                                            <div class="product-item style1">

                                                <div class="product-inner">

                                                    <div class="product-thumb">

                                                        <div class="thumb-inner">

                                                            <a href="detail.php?proDetaildId=<?php echo $row['id']?>"><img  style='width:50px' src="admin/<?php echo $row['image']?>" alt="p4"></a>

                                                        </div>

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