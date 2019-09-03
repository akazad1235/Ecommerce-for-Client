<?php include("lib/session.php");
Session::init();
?>
<!DOCTYPE html>

<html lang="en">
<!-- Mirrored from ledthanhdat.vn/tyrion/ by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Jul 2019 07:11:35 GMT -->
<head>

<?php include("classes/products.php")?>
<?php include("classes/category.php")?>
<?php include("classes/cart.php")?>
<?php $pd=new Product()?>
<?php $ct=new Category()?>
<?php $cart=new Cart()?>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta charset="UTF-8">

    <title>BdShop</title>

    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.png"/>

    <link rel="stylesheet" type="text/css" href="assets/css/animate.css">

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" type="text/css" href="assets/css/pe-icon-7-stroke.css">

    <link rel="stylesheet" type="text/css" href="assets/css/owl.carousel.css">

    <link rel="stylesheet" type="text/css" href="assets/css/chosen.css">

    <link rel="stylesheet" type="text/css" href="assets/css/jquery.bxslider.css">

    <link rel="stylesheet" type="text/css" href="assets/css/style.css">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,600i,700,700i" rel="stylesheet">

    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,500i,700" rel="stylesheet">

</head>

<body class="index-opt-3">



    <div class="wrapper">

        <form id="block-search-mobile" method="get" class="block-search-mobile">
            <div class="form-content">
                <div class="control">
                    <a href="#" class="close-block-serach"><span class="icon fa fa-times"></span></a>
                    <input type="text" name="search" placeholder="Search" class="input-subscribe">
                    <button type="submit" class="btn search">
                        <span><i class="fa fa-search" aria-hidden="true"></i></span>
                    </button>
                </div>
            </div>
        </form>

        <!-- HEADER -->

        <header class="site-header header-opt-1">



            <!-- header-top -->

            <div class="header-top">

                <div class="container">



                    <!-- hotline -->

                    <ul class="nav-top-left" >

                        <li><a href="#">Welcome to Tyrion - Always free delivery</a></li>

                    </ul><!-- hotline -->



                    <!-- heder links -->

                    <ul class="nav-top-right tyrion-nav">

                        <li ><a href="#">Newsletter</a></li>

                        <li class="menu-item-has-children">
                            <a href="#" class="dropdown-toggle">
                                <img src="assets/images/general/l1.jpg" alt="flag">English<i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>

                            <ul class="submenu parent-megamenu">

                                <li class="switcher-option">

                                    <a href="#" class="flag"><img src="assets/images/general/l1.jpg" alt="flag">English</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="flag"><img src="assets/images/general/l2.jpg" alt="flag">Hungary</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="flag"><img src="assets/images/general/l3.jpg" alt="flag">German</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="flag"><img src="assets/images/general/l4.jpg" alt="flag">French</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="flag"><img src="assets/images/general/l5.jpg" alt="flag">Canada</a>

                                </li>

                            </ul>

                        </li>

                        <li class="menu-item-has-children">

                            <a href="#" class="dropdown-toggle">

                                <span>Dollar (US)</span><i class="fa fa-angle-down" aria-hidden="true"></i> 

                            </a>

                            <ul class="submenu parent-megamenu">

                                <li class="switcher-option">

                                    <a href="#" class="switcher-flag icon">Pound (GBP)</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="switcher-flag icon">Euro (EUR)</a>

                                </li>

                                <li class="switcher-option">

                                    <a href="#" class="switcher-flag icon">Dollar (USD)</a>

                                </li>

                            </ul>

                        </li>

                        <li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>Register / Sign in</a></li>

                    </ul><!-- heder links -->



                </div>

            </div> <!-- header-top -->



            <!-- header-content -->

            <div class="header-content">

                <div class="container">

                    <div class="row">

                        <div class="col-md-2 nav-left">

                            <!-- logo -->

                            <strong class="logo">

                                <a href="index.php"><img src="assets/images/logo.jpg" alt="logo"></a>

                            </strong><!-- logo -->

                        </div>

                        <div class="col-md-8 nav-mind">



                            <!-- block search -->

                            <div class="block-search">

                                <div class="block-content">

                                    <div class="categori-search  ">

                                        <select data-placeholder="All Categories" class="chosen-select categori-search-option">
                                            <option value="">All Categories</option>
                                            <optgroup label="- Electronics">
                                              <option>Batteries & Chargens</option>
                                              <option>Headphone & Headsets</option>
                                              <option>Mp3 Player & Acessories</option>
                                            </optgroup>
                                            <optgroup label="- Smartphone & Table">
                                              <option>Batteries & Chargens</option>
                                              <option>Headphone & Headsets</option>
                                              <option>Mp3 Player & Acessories</option>
                                            </optgroup>
                                            <optgroup label="- Electronics">
                                              <option>Batteries & Chargens</option>
                                              <option>Headphone & Headsets</option>
                                              <option>Mp3 Player & Acessories</option>
                                            </optgroup>
                                            <optgroup label="- Smartphone & Table">
                                              <option>Batteries & Chargens</option>
                                              <option>Headphone & Headsets</option>
                                              <option>Mp3 Player & Acessories</option>
                                            </optgroup>
                                        </select>

                                    </div>

                                    <div class="form-search">

                                        <form>

                                            <div class="box-group">

                                                <input type="text" class="form-control" placeholder="Searh entire store here...">

                                                <button class="btn btn-search" type="button"><span>search</span></button>

                                            </div>

                                        </form>

                                    </div>

                                </div>

                            </div><!-- block search -->

                        </div>

                        <div class="col-md-2 nav-right">

                            <!-- block mini cart -->

                            <div class="block-minicart dropdown">

                                

                                <a class="minicart" href="#">

                                    <span class="counter qty">

                                        <span class="cart-icon"><i class="fa fa-shopping-bag" aria-hidden="true"></i></span>

                                        <span class="counter-number">2</span>

                                    </span>

                                    <span class="counter-your-cart">

                                        <span class="counter-label">Your Cart:</span>

                                        <span class="counter-price">$00.00</span>

                                    </span>

                                </a>

                                <div class="parent-megamenu">

                                    <form>

                                        <div class="minicart-content-wrapper" >

                                            <div class="subtitle">

                                                You have <span>2</span> item(s) in your cart

                                            </div>

                                            <div class="minicart-items-wrapper">

                                                <ol class="minicart-items">

                                                    <li class="product-inner">

                                                        <div class="product-thumb style1">

                                                            <div class="thumb-inner">

                                                                <a href="#"><img src="assets/images/home1/c1.jpg" alt="c1"></a>

                                                            </div>

                                                        </div>

                                                        <div class="product-innfo">

                                                            <div class="product-name"><a href="#">Xbox One S Halo Collection Bund</a></div>

                                                            <a href="#" class="remove"><i class="fa fa-times" aria-hidden="true"></i></a>

                                                            <span class="price price-dark">

                                                                <ins>$229.00</ins>

                                                            </span>

                                                        </div>

                                                    </li>

                                                    <li class="product-inner">

                                                        <div class="product-thumb style1">

                                                            <div class="thumb-inner">

                                                                <a href="#"><img src="assets/images/home1/c2.jpg" alt="c2"></a>

                                                            </div>

                                                        </div>

                                                        <div class="product-innfo">

                                                            <div class="product-name"><a href="#">Acer's Aspire S7 is a thin and portable...</a></div>
                                                            <a href="#" class="remove"><i class="fa fa-times" aria-hidden="true"></i></a>

                                                            <span class="price">

                                                                <ins>$229.00</ins>

                                                                <del>$259.00</del>

                                                            </span>

                                                        </div>

                                                    </li>

                                                </ol>

                                            </div>

                                            <div class="subtotal">

                                                <span class="label">Total :</span>

                                                <span class="price">$480.00</span>

                                            </div>

                                            <div class="actions">

                                                <a class="btn btn-viewcart" href="shopping-cart.php">
                                                    View cart</a>

                                                <a class="btn btn-checkout" href="checkout.php">Checkout</a>

                                            </div>

                                        </div>

                                    </form>

                                </div>

                            </div><!-- block mini cart -->

                            <a href="#" class="hidden-md search-hidden"><span class="pe-7s-search"></span></a>

                            <a class="wishlist-minicart" href="#"><i class="fa fa-heart-o" aria-hidden="true"></i></a>



                        </div>

                    </div>

                </div>

            </div><!-- header-content -->

            <!-- header-menu-bar -->

            <div class="header-menu-bar header-sticky">

                <div class="header-menu-nav menu-style-2">

                    <div class="container">

                        <div class="header-menu-nav-inner">

                            <div id="box-vertical-megamenus" class="box-vertical-megamenus nav-toggle-cat">

                                <h4 class="title active">

                                    <span class="btn-open-mobile home-page">

                                        <span></span>

                                        <span></span>

                                        <span></span>

                                    </span>

                                    <span class="title-menu">All Departments</span>   

                                </h4>

                                <div class="vertical-menu-content" >
                                    <span class="btn-close hidden-md"><i class="fa fa-times" aria-hidden="true"></i></span>

                                    <ul class="vertical-menu-list">

                                        <li><a href="#">New Arrivals</a></li>
                                        <li class="menu-item-has-children arrow item-megamenu">

                                            <a href="#" class="dropdown-toggle">Top 100 Best Seller</a>

                                            <span class="toggle-submenu hidden-md"></span>

                                            <div class="submenu parent-megamenu megamenu">

                                                <div class="row">

                                                    <div class="submenu-banner submenu-banner-menu-1">

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Fashion WoMen’s</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Leather Jackets</a></li>

                                                                        <li class="menu-item"><a href="#">Tablets</a></li>

                                                                        <li class="menu-item"><a href="#">Audio & Theater</a></li>

                                                                        <li class="menu-item"><a href="#">Bestseller</a></li>

                                                                        <li class="menu-item"><a href="#">Top Rated</a></li>

                                                                        <li class="menu-item"><a href="#">Macbook Air</a></li>

                                                                        <li class="menu-item"><a href="#">Laptop Pro</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Accessories</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Hair Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Bloves & Mittens</a></li>

                                                                        <li class="menu-item"><a href="#">Hats</a></li>

                                                                        <li class="menu-item"><a href="#">Tech Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Head Set</a></li>

                                                                        <li class="menu-item"><a href="#">Software</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </li>
                                        <li class="menu-item-has-children arrow item-megamenu">

                                            <a href="#" class="dropdown-toggle">TV & Video</a>

                                            <span class="toggle-submenu hidden-md"></span>

                                            <div class="submenu parent-megamenu megamenu">

                                                <div class="row">

                                                    <div class="submenu-banner submenu-banner-menu-1">

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Fashion WoMen’s</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Leather Jackets</a></li>

                                                                        <li class="menu-item"><a href="#">Tablets</a></li>

                                                                        <li class="menu-item"><a href="#">Audio & Theater</a></li>

                                                                        <li class="menu-item"><a href="#">Bestseller</a></li>

                                                                        <li class="menu-item"><a href="#">Top Rated</a></li>

                                                                        <li class="menu-item"><a href="#">Macbook Air</a></li>

                                                                        <li class="menu-item"><a href="#">Laptop Pro</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Accessories</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Hair Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Bloves & Mittens</a></li>

                                                                        <li class="menu-item"><a href="#">Hats</a></li>

                                                                        <li class="menu-item"><a href="#">Tech Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Head Set</a></li>

                                                                        <li class="menu-item"><a href="#">Software</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </li>

                                        <li><a href="#">Accessories</a>

                                        </li>

                                        <li><a href="#">Audio & Theater</a></li>

                                        <li class="menu-item-has-children arrow item-megamenu">

                                            <a href="#" class="dropdown-toggle">Laptop & Computers</a>

                                            <span class="toggle-submenu hidden-md"></span>

                                            <div class="submenu parent-megamenu megamenu">

                                                <div class="row">

                                                    <div class="submenu-banner submenu-banner-menu-1">

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Laptop & computers</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Laptops, Desktops & Monitors</a></li>

                                                                        <li class="menu-item"><a href="#">Printers & Ink</a></li>

                                                                        <li class="menu-item"><a href="#">Computer Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Software</a></li>

                                                                        <li class="menu-item"><a href="#">Macbook</a></li>

                                                                        <li class="menu-item"><a href="#">Macbook Air</a></li>

                                                                        <li class="menu-item"><a href="#">Laptop Pro</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                        <div class="col-md-4">

                                                            <div class="dropdown-menu-info">

                                                                <h6 class="dropdown-menu-title">Accessories</h6>

                                                                <div class="dropdown-menu-content">

                                                                    <ul class="menu">

                                                                        <li class="menu-item"><a href="#">Accessories</a></li>

                                                                        <li class="menu-item"><a href="#">Phone Batteries</a></li>

                                                                        <li class="menu-item"><a href="#">Phone Charger</a></li>

                                                                        <li class="menu-item"><a href="#">Phone Screen</a></li>

                                                                        <li class="menu-item"><a href="#">Head Set</a></li>

                                                                        <li class="menu-item"><a href="#">Software</a></li>

                                                                    </ul>

                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </li>

                                        <li><a href="#">Game & Consoles</a></li>

                                        <li><a href="#">Headphone</a></li>

                                        <li><a href="#">Video Games & Consoles</a></li>

                                        <li><a href="#">Car Electronic & GDP</a></li>

                                        <li><a href="#">Virtual Reality</a></li>

                                    </ul>

                                </div>

                            </div>
                            

                            <div class="header-menu header-menu-resize">
                                
                                <ul class="header-nav tyrion-nav">
                                    <li class="btn-close hidden-md"><i class="fa fa-times" aria-hidden="true"></i></li>

                                    <li class="menu-item-has-children arrow">

                                        <a href="index-2.html" class="dropdown-toggle">Home</a>

                                        <span class="toggle-submenu hidden-md"></span>
                                        <ul class="submenu parent-megamenu">
                                            <li class="menu-item">
                                                <a href="index-2.html">Home 1</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="index2.html">Home 2</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="index3.html">Home 3</a>
                                            </li>
                                        </ul>

                                    </li>

                                    <li class="menu-item-has-children arrow">

                                        <a href="#" class="dropdown-toggle">Shop</a>

                                        <span class="toggle-submenu hidden-md"></span>

                                        <ul class="submenu parent-megamenu">
                                            <li class="menu-item">
                                                <a href="grid-product.php">Grid Product</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="list-product.php">List Product</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="list-product-right.php">List Product Right</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="grid-product-right.php">Grid Product Right</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="detail.php">Detail Product</a>
                                            </li>
                                        </ul>

                                    </li>

                                    <li class="menu-item-has-children arrow">

                                        <a href="#" class="dropdown-toggle">Sub Menu</a>

                                        <span class="toggle-submenu hidden-md"></span>

                                        <ul class="submenu parent-megamenu">
                                            <li class="menu-item">
                                                <a href="checkout.php">Checkout</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="shopping-cart.php">Shopping Cart</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="contact-us.php">Contact Us</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="login.php">Login</a>
                                            </li>
                                        </ul>

                                    </li>

                                    <li>

                                        <a href="contact-us.html" class="dropdown-toggle">Contact Us</a>

                                        <span class="toggle-submenu hidden-md"></span>

                                    </li>

                                    <li class="menu-item-has-children arrow">

                                        <a href="#" class="dropdown-toggle">Blog</a>

                                        <span class="toggle-submenu hidden-md"></span>

                                        <ul class="submenu parent-megamenu">
                                            <li class="menu-item">
                                                <a href="blog-grid.html">Blog Grid</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="blog-list.html">Blog List</a>
                                            </li>
                                            <li class="menu-item">
                                                <a href="blog-single.html">Blog Single</a>
                                            </li>
                                        </ul>

                                    </li>

                                </ul>

                            </div>

                            <span data-action="toggle-nav" class="menu-on-mobile hidden-md">

                                <span class="btn-open-mobile home-page">

                                    <span></span>

                                    <span></span>

                                    <span></span>

                                </span>

                                <span class="title-menu-mobile">Main menu</span> 

                            </span>

                        </div>

                    </div>

                </div>

            </div>

        </header><!-- end HEADER -->        

