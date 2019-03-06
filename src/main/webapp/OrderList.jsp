<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/3
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>orders</title>
    <link rel="stylesheet" href="css/style3.css">
</head>

<body class="category-page">
<div id="page">
    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <!-- Header Language -->
                        <div class="col-xs-12 col-sm-6">
                            <div class="welcome-msg">Welcome to Organic! </div>
                            <div class="dropdown jtv-language-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#"> <img src="images/flag-english.jpg" alt="language"> English <span class="caret"></span> </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li> <a class="selected" href="#"> <img src="images/flag-english.jpg" alt="flag"> <span>English</span> </a> </li>
                                    <li> <a href="#"> <img src="images/flag-default.jpg" alt="flag"> <span>French</span> </a> </li>
                                    <li> <a href="#"> <img src="images/flag-german.jpg" alt="flag"> <span>German</span> </a> </li>
                                    <li> <a href="#"> <img src="images/flag-brazil.jpg" alt="flag"> <span>Brazil</span> </a> </li>
                                    <li> <a href="#"> <img src="images/flag-chile.jpg" alt="flag"> <span>Chile</span> </a> </li>
                                    <li> <a href="#"> <img src="images/flag-spain.jpg" alt="flag"> <span>Spain</span> </a> </li>
                                </ul>
                            </div>
                            <!-- End Header Language -->

                            <!-- Header Currency -->
                            <div class="dropdown jtv-currency-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-currency dropdown-toggle" href="#"> USD <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#"> $ - Dollar </a> </li>
                                    <li><a href="#"> £ - Pound </a> </li>
                                    <li><a href="#"> € - Euro </a> </li>
                                </ul>
                            </div>
                            <!-- End Header Currency -->

                        </div>
                        <div class="col-xs-6 hidden-xs">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>
                                        <li> <a title="My Account" href="#"><span class="hidden-xs">My Account</span></a> </li>
                                        <li> <a title="Wishlist" href="#">Wishlist</a> </li>
                                        <li> <a title="Checkout" href="#"><span class="hidden-xs">Checkout</span></a> </li>
                                        <li>
                                            <div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#"> More <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="about_us.html"> About Us </a> </li>
                                                    <li><a href="#"> Customer Service </a> </li>
                                                    <li><a href="#"> Privacy Policy </a> </li>
                                                    <li><a href="#">Site Map </a> </li>
                                                    <li><a href="#">Search Terms </a> </li>
                                                    <li><a href="#">Advanced Search </a> </li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li> <a href="#"><span class="hidden-xs">Log In</span></a> </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- End Header Top Links -->
                        </div>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <div class="jtv-top-cart-box">
                            <!-- Top Cart -->
                            <div class="mini-cart">
                                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">2</span><span class="price">My Bag / $259.00</span> </a> </div>
                                <div>
                                    <div class="jtv-top-cart-content">

                                        <!--block-subtitle-->
                                        <ul class="mini-products-list" id="cart-sidebar">
                                            <li class="item first">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img01.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$79.99</span> </div>
                                                </div>
                                            </li>
                                            <li class="item">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img02.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$88.89</span> </div>
                                                </div>
                                            </li>
                                            <li class="item last">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.html"><img alt="Product Title Here" src="images/products/img04.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#">Remove</a> <a class="btn-edit" title="Edit item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$85.99</span> </div>
                                                </div>
                                            </li>
                                        </ul>

                                        <!--actions-->
                                        <div class="actions">
                                            <button class="btn-checkout" title="Checkout" type="button" onClick="#"><span>Checkout</span> </button>
                                            <a href="#" class="view-cart"><span>View Cart</span></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"> <h1><a title="eCommerce" href="index.html"><img alt="eCommerce" src="images/logo.png"> </a></h1> </div>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
                        <div class="search-box">
                            <form action="cat" method="POST" id="search_mini_form" name="Categories">
                                <input type="text" placeholder="Search here..." value="" maxlength="70" name="search" id="search">
                                <button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- end header -->

    <!-- Navigation -->

    <nav>
        <div class="container">
            <div class="mm-toggle-wrap">
                <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span> </div>
            </div>
            <div class="nav-inner">
                <!-- BEGIN NAV -->
                <ul id="nav" class="hidden-xs">
                    <li class="drop-menu"><a href="index.html" class="level-top active"><span>Home</span></a>

                    </li>
                    <li class="drop-menu"> <a href="#"> <span>Pages</span> </a>
                        <ul>
                            <li class="sub-cat"><a href="shop_grid.html"><span>Shop Grid</span></a>
                                <ul>
                                    <li> <a href="#"> <span>Shop Grid Right Sidebar</span> </a> </li>
                                    <li> <a href="#"> <span>Shop Grid Fullwidth</span> </a> </li>
                                </ul>
                            </li>
                            <li class="sub-cat"> <a href="#"> <span>Shop List</span> </a>
                                <ul>
                                    <li> <a href="#"> <span>Shop List Right Sidebar</span> </a> </li>
                                </ul>
                            </li>
                            <li> <a href="single_product.html"> <span>Single Product</span> </a> </li>
                            <li> <a href="#"> <span>Shopping Cart</span> </a> </li>
                            <li><a href="#"><span>Checkout</span></a> </li>
                            <li> <a href="#"> <span>Wishlist</span> </a> </li>
                            <li><a href="#"><span>Compare</span></a> </li>
                            <li><a href="#"><span>Quick View</span></a> </li>
                            <li><a href="#"><span>404 Error Page</span></a> </li>
                        </ul>
                    </li>
                    <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Fruits</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <div class="col-1">
                                        <ul class="level0">
                                            <li class="parent item"> <a href="shop_grid.html"><span>Apples</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Aurore Grape</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Super Sweet</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Gravenstein</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Orange Pippin</span></a> </li>
                                                </ul>
                                            </li>
                                            <li class="parent item"> <a href="shop_grid.html"><span>Grapes</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Raw Honey</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Flavored Honey</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Propolis</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Exotic Honey</span></a> </li>
                                                </ul>
                                            </li>
                                            <li class="parent item"> <a href="shop_grid.html"><span>Citruses</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Potatoes</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Tomatoes</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Pickles</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Cauliflowers</span></a> </li>
                                                </ul>
                                            </li>
                                            <li class="parent item"> <a href="shop_grid.html"><span>Exotic Fruits</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Spinach</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Pumpkin</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Kohlrabi</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Green Cabbage</span></a> </li>
                                                </ul>
                                            </li>
                                            <li class="parent item"> <a href="shop_grid.html"><span>Summer Berries</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Avocado</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Paprika</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Cheese Holand</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Cheese</span></a> </li>
                                                </ul>
                                            </li>
                                            <li class="parent item"> <a href="shop_grid.html"><span>Green Cabbage</span></a>
                                                <ul class="level1">
                                                    <li> <a href="shop_grid.html"><span>Сauliflower</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Tomato</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Oranges</span></a> </li>
                                                    <li> <a href="shop_grid.html"><span>Carrots</span></a> </li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-2">
                                        <div class="jtv-nav-image1"> <a title="" href="#"><img alt="menu_image" src="images/menu-img1.jpg"> </a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Vegetables</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"> <a href="shop_grid.html"><span>Herbs and spices</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Lemon Grass</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Rosemary</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Chamomile</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Oregano</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Root vegetables</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Celeriac</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Daikon</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Rutabaga</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Parsnip</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Onion family</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Chives</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Shallot</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Onion</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Garlic</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Legumes</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Black beans</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Kidney beans</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Green beans</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Soy beans</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Haricot bean</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Nectarine</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Charles & Keith</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Fruits</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Rhubarb</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Kiwi fruit</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Mango</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Orange</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Pepper</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Quince</span></a> </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="jtv-nav-banner">
                                    <div class="jtv-banner-box">
                                        <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img2.jpg" alt="Handbag"> </a> </div>
                                    </div>
                                    <div class="jtv-banner-box">
                                        <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img3.jpg" alt="Handbag"> </a> </div>
                                    </div>
                                    <div class="jtv-banner-box jtv-banner-box_last">
                                        <div class="jtv-nav-banner-img"> <a href="#"><img src="images/menu-img4.jpg" alt="Handbag"> </a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Healthy Eating</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"> <a href="shop_grid.html"><span>Vegetables</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Tomatoes</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Potatoes</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Carrots</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Cauliflowers</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Fruit</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Mango</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Orange</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Pepper</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Quince</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Whole Grains</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Cereals</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Noodles</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Rice</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Pasta</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Protein</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Nutrition</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Biosynthesis</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Enzymes</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Chronic Diseases</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Low-Fat Dairy</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Skim milk</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Fat-free cheese</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Strawberries</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Salad with olives</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Healthy Snack Food</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Pumpkin Seeds</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>String Cheese</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Celery</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Cottage Cheese</span></a> </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"> <a class="level-top" href="shop_grid.html"><span>Drinks</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                                    <ul class="level0">
                                        <li class="parent item"> <a href="shop_grid.html"><span>Cold drinks</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Fayrouz</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Mirinda</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>AMP Energy</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Mountain Dew</span></a> </li>
                                            </ul>               </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Hot drinks</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Apple cider</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Butter tea</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Irish coffee</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Mate cocido</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Fruit drinks</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Strawberry Lemonade</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Apple Cider</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Watermelontinis</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Sparkling Sangria</span></a> </li>
                                            </ul></li>
                                        <li class="parent item"> <a href="shop_grid.html"><span>Mixed drinks</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.html"><span>Like Hand Grenade</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Miami Vice</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Blue Lagoon</span></a> </li>
                                                <li> <a href="shop_grid.html"><span>Jungle Juice</span></a> </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="nav-block nav-block-right std jtv-menu-box-right"><img src="images/menu-img5.jpg" alt="menu img"> </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"> <a class="level-top" href="#"><span>Blog</span></a> </li>
                    <li class="nav-custom-link mega-menu"> <a href="#" class="level-top"> <span>Buy this theme</span> </a>
                        <div class="jtv-menu-block-wrapper custom-menu">
                            <div class="header-nav-dropdown-wrapper">
                                <div class="jtv-custom-box"> <i class="fa fa-laptop"></i>
                                    <h6 class="heading">100% Responsive Design</h6>
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
                                </div>
                                <div class="jtv-custom-box"> <i class="fa fa-book"></i>
                                    <h6 class="heading">Easy Document</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim erat ut laoreet pharetra.</p>
                                </div>
                                <div class="jtv-custom-box"> <i class="fa fa-fort-awesome"></i>
                                    <h6 class="heading">Awesome Icon Fonts</h6>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                                </div>
                                <div class="jtv-custom-box"> <i class="fa fa-home"></i>
                                    <h6 class="heading">1 Layout Home Pages</h6>
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- end nav -->

    <!-- Breadcrumbs -->
    <div class="breadcrumbs">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <ul>
                        <li class="home"> <a href="index.html" title="Go to Home Page">Home</a> <span>/</span> </li>
                        <li> <a href="shop_grid.html" title="">Fruits</a> <span>/ </span> </li>
                        <li> <a href="shop_grid.html" title="">Apples</a> <span>/</span> </li>
                        <li> <strong>Green Apple</strong> </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumbs End -->

    <!-- Main Container -->
    <section class="main-container col2-left-layout">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-sm-push-3">
                    <article class="col-main">
                        <h3 class="page-heading"> <span class="page-heading-title">我的订单</span> </h3>
                        <div class="category-products">
                            <ul class="products-grid">
                                <c:forEach items="${ordersMap}" var="orders">
                                    <li class="item col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                        <div class="item-inner">
                                            <div class="item-img">
                                                <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="#"> <img alt="Product Title Here" src="images/products/img10.jpg"> </a>
                                                    <div class="jtv-box-hover">
                                                        <ul class="add-to-links">
                                                            <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                                                            <li><a class="link-wishlist" href="#"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                                                            <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="item-info">
                                                <div class="info-inner">
                                                    <div class="item-title"><h6> <a title="Product Title Here" href="#"><c:out value="${orders.key}"/></a></h6> </div>
                                                    <div class="item-content">
                                                        <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                        <div class="item-price">
                                                            <div class="price-box"> <span class="regular-price"> <span class="price">¥<c:out value="${orders.value.totalPrice}"/></span> </span> </div>
                                                        </div>
                                                        <div class="action">
                                                            <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>查看详情</span> </button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="toolbar">
                            <div class="row">
                                <div class="col-sm-6 text-left">
                                    <ul class="pagination">
                                        <li class="active"><span>1</span></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">&gt;</a></li>
                                        <li><a href="#">&gt;|</a></li>
                                    </ul>
                                </div>
                                <div class="col-sm-6 text-right">Showing 1 to 15 of 25 (2 Pages)</div>
                            </div>
                        </div>
                    </article>
                    <!--	///*///======    End article  ========= //*/// -->
                </div>
                <div class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
                    <aside class="sidebar">
                        <div class="block block-layered-nav">
                            <div class="block-title"><h3>Shop By</h3></div>
                            <div class="block-content">
                                <p class="block-subtitle">Shopping Options</p>
                                <dl id="narrow-by-list">
                                    <dt class="odd">Price</dt>
                                    <dd class="odd">
                                        <ol>
                                            <li> <a href="#"><span class="price">$0.00</span> - <span class="price">$99.99</span></a> (6) </li>
                                            <li> <a href="#"><span class="price">$100.00</span> and above</a> (6) </li>
                                        </ol>
                                    </dd>
                                    <dt class="even">Manufacturer</dt>
                                    <dd class="even">
                                        <ol>
                                            <li> <a href="#">Colorido</a> (20) </li>
                                            <li> <a href="#">Adidas</a> (25) </li>
                                            <li> <a href="#">Barisa Epic</a> (8) </li>
                                            <li> <a href="#">Esbeda</a> (5) </li>
                                        </ol>
                                    </dd>
                                    <dt class="odd">Handbag Material</dt>
                                    <dd class="odd">
                                        <ol class="bag-material">
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">
                                                Beaded</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">
                                                Canvas</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">
                                                Velvet</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">
                                                Rubber</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">
                                                Leather</a></li>
                                        </ol>
                                    </dd>
                                    <dt class="odd">Color</dt>
                                    <dd class="odd">
                                        <ol>
                                            <li> <a href="#">Green</a> (1) </li>
                                            <li> <a href="#">White</a> (5) </li>
                                            <li> <a href="#">Black</a> (5) </li>
                                            <li> <a href="#">Gray</a> (4) </li>
                                            <li> <a href="#">Dark Gray</a> (3) </li>
                                            <li> <a href="#">Blue</a> (1) </li>
                                        </ol>
                                    </dd>
                                </dl>
                            </div>
                        </div>
                        <div class="block product-price-range ">
                            <div class="block-title"><h3>Price</h3></div>
                            <div class="block-content">
                                <div class="slider-range">
                                    <div data-label-reasult="Range:" data-min="0" data-max="500" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="50" data-value-max="350">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 10%; width: 60%;"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 10%;"></span><span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 70%;"></span></div>
                                    <div class="amount-range-price">Range: $10 - $550</div>
                                    <ul class="check-box-list">
                                        <li>
                                            <input type="checkbox" id="p1" name="cc">
                                            <label for="p1"> <span class="button"></span> $20 - $50<span class="count">(5)</span> </label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="p2" name="cc">
                                            <label for="p2"> <span class="button"></span> $50 - $100<span class="count">(10)</span> </label>
                                        </li>
                                        <li>
                                            <input type="checkbox" id="p3" name="cc">
                                            <label for="p3"> <span class="button"></span> $100 - $250<span class="count">(12)</span> </label>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="block block-cart">
                            <div class="block-title "><h3>My Cart</h3></div>
                            <div class="block-content">
                                <div class="summary">
                                    <p class="amount">There are <a href="#">3 items</a> in your cart.</p>
                                    <p class="subtotal"> <span class="label">Cart Subtotal:</span> <span class="price">$227.99</span> </p>
                                </div>
                                <div class="ajax-checkout">
                                    <button class="button button-checkout" title="Submit" type="submit"><span>Checkout</span></button>
                                </div>
                                <p class="block-subtitle">Recently added item(s) </p>
                                <ul>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img10.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">$99.99</span>
                                            <p class="product-name"> <a href="#">Product Title Here</a> </p>
                                        </div>
                                    </li>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img01.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">$88.00</span>
                                            <p class="product-name"> <a href="#">Product Title Here</a> </p>

                                            <!--access clearfix-->
                                        </div>
                                    </li>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img05.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">$98.00</span>
                                            <p class="product-name"> <a href="#">Product Title Here</a> </p>

                                            <!--access clearfix-->
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="block block-compare">
                            <div class="block-title ">Compare Products (2)</div>
                            <div class="block-content">
                                <ol id="compare-items">
                                    <li class="item">
                                        <input type="hidden" value="2173" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#"></a> <a href="#" class="product-name"><i class="fa fa-angle-right"></i>Product Title Here</a> </li>
                                    <li class="item">
                                        <input type="hidden" value="2174" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#"></a> <a href="#" class="product-name"><i class="fa fa-angle-right"></i>Product Title Here</a> </li>
                                    <li class="item">
                                        <input type="hidden" value="2174" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#"></a> <a href="#" class="product-name"><i class="fa fa-angle-right"></i>Product Title Here</a> </li>
                                </ol>
                                <div class="ajax-checkout">
                                    <button type="submit" title="Submit" class="button button-compare"><span>Compare</span></button>
                                    <button type="submit" title="Submit" class="button button-clear"><span>Clear</span></button>
                                </div>
                            </div>
                        </div>
                        <div class="custom-slider">
                            <div>
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li class="active" data-target="#carousel-example-generic" data-slide-to="0"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="item active"><img src="images/slide3.jpg" alt="slide3">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">Big sale</a></h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                                <a class="link" href="#">Shop Now</a></div>
                                        </div>
                                        <div class="item"><img src="images/slide1.jpg" alt="slide1">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">Bag collection</a></h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                            </div>
                                        </div>
                                        <div class="item"><img src="images/slide2.jpg" alt="slide2">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">New special</a></h3>
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left carousel-control" href="#" data-slide="prev"> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#" data-slide="next"> <span class="sr-only">Next</span> </a></div>
                            </div>
                        </div>
                        <div class="block block-list block-viewed">
                            <div class="block-title"><h3> Recently Viewed</h3> </div>
                            <div class="block-content">
                                <ol id="recently-viewed-items">
                                    <li class="item odd">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>Product Title Here</a></p>
                                    </li>
                                    <li class="item even">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>Product Title Here</a></p>
                                    </li>
                                    <li class="item last odd">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>Product Title Here</a></p>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="block block-poll">
                            <div class="block-title"><h3>Community Poll</h3> </div>
                            <form id="pollForm" action="#" method="post" onSubmit="return validatePollAnswerIsSelected();">
                                <div class="block-content">
                                    <p class="block-subtitle">What is your favorite color</p>
                                    <ul id="poll-answers">
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_1" value="1">
                                            <span class="label">
                      <label for="vote_1">Green</label>
                      </span> </li>
                                        <li class="even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_2" value="2">
                                            <span class="label">
                      <label for="vote_2">Red</label>
                      </span> </li>
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_3" value="3">
                                            <span class="label">
                      <label for="vote_3">Black</label>
                      </span> </li>
                                        <li class="last even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_4" value="4">
                                            <span class="label">
                      <label for="vote_4">Pink</label>
                      </span> </li>
                                    </ul>
                                    <div class="actions">
                                        <button type="submit" title="Vote" class="button button-vote"><span>Vote</span></button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="block block-tags">
                            <div class="block-title"><h3> Popular Tags</h3></div>
                            <div class="block-content">
                                <div class="tags-list"> <a href="#">Fruits</a> <a href="#">Bag</a> <a href="#">Healthy Eating</a> <a href="#">Drinks</a> <a href="#">Backpacks</a> <a href="#">Piper Bag</a> </div>
                                <div class="actions"> <a href="#" class="view-all">View All Tags</a> </div>
                            </div>
                        </div>
                    </aside>
                </div>
            </div>
        </div>
    </section>
    <!-- Main Container End -->

    <!-- Brand Logo -->
    <div class="brand-logo">
        <div class="container">
            <div class="slider-items-products">
                <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col6">

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand3.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand1.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand2.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand4.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand5.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand6.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand2.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"> <a href="#"><img src="images/brand4.png" alt="Image"> </a> </div>
                        <!-- End Item -->

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Footer -->
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div style="text-align:center"> <a href="index.html"><img src="images/footer-logo.png" alt="logo"> </a> </div>
                    <address>
                        <p> <i class="fa fa-map-marker"></i>Company, 12/34 - West 21st Street, New York, USA </p>
                        <p><i class="fa fa-mobile"></i><span>+ (800) 0123 456 789</span> </p>
                        <p> <i class="fa fa-envelope"></i><span><a href="mailto:email@domain.com">support@themes.com</a></span></p>
                    </address>
                </div>
            </div>
        </div>
        <div class="footer-inner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12 col-md-3">
                        <div class="footer-links">
                            <h5>Useful links</h5>
                            <ul class="links">
                                <li><a href="#" title="Product Recall">Product Recall</a></li>
                                <li><a href="#" title="Gift Vouchers">Gift Vouchers</a></li>
                                <li><a href="#" title="Returns &amp; Exchange">Returns &amp; Exchange</a></li>
                                <li><a href="#" title="Shipping Options">Shipping Options</a></li>
                                <li><a href="#" title="Help &amp; FAQs">Help &amp; FAQs</a></li>
                                <li><a href="#" title="Order history">Order history</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12 col-md-3">
                        <div class="footer-links">
                            <h5>Service</h5>
                            <ul class="links">
                                <li><a href="#">Account</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Shopping Cart</a></li>
                                <li><a href="#">Return Policy</a></li>
                                <li><a href="#">Special</a></li>
                                <li><a href="#">Lookbook</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12 col-md-2">
                        <div class="footer-links">
                            <h5>Information</h5>
                            <ul class="links">
                                <li><a href="#">Sites Map </a></li>
                                <li><a href="#">News</a></li>
                                <li><a href="#">Trends</a></li>
                                <li><a href="about_us.html">About Us</a></li>
                                <li><a href="contact_us.html">Contact Us</a></li>
                                <li><a href="#">My Orders</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="footer-links">
                            <div class="footer-newsletter">
                                <h5>Subscribe to our news</h5>
                                <form id="newsletter-validate-detail" method="post" action="#">
                                    <div class="newsletter-inner">
                                        <p>Subscribe to be the first to know about Sales, Events, and Exclusive Offers!</p>
                                        <input class="newsletter-email" name='Email' placeholder='Enter Your Email'>
                                        <button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
                                    </div>
                                </form>
                            </div>
                            <div class="social">
                                <h5>Follow Us</h5>
                                <ul class="inline-mode">
                                    <li class="social-network fb"><a title="Connect us on Facebook" target="_blank" href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="social-network googleplus"><a title="Connect us on Google+" target="_blank" href="#"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="social-network tw"><a title="Connect us on Twitter" target="_blank" href="#"><i class="icon-social-twitter icons"></i></a></li>
                                    <li class="social-network linkedin"><a title="Connect us on Linkedin" target="_blank" href="#"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="social-network rss"><a title="Connect us on rss" target="_blank" href="#"><i class="fa fa-rss"></i></a></li>
                                    <li class="social-network instagram"><a title="Connect us on Instagram" target="_blank" href="#"><i class="fa fa-instagram"></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-xs-12 coppyright">Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
                    <div class="col-sm-7 col-xs-12 payment-accept">
                        <ul>
                            <li> <a href="#"><img src="images/payment-1.png" alt="Payment Card"></a> </li>
                            <li> <a href="#"><img src="images/payment-2.png" alt="Payment Card"></a> </li>
                            <li> <a href="#"><img src="images/payment-3.png" alt="Payment Card"></a> </li>
                            <li> <a href="#"><img src="images/payment-4.png" alt="Payment Card"></a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div>

<!-- End Footer -->

<!-- jquery js -->
<script type="text/javascript" src="js/jquery.min.js"></script>

<!-- bootstrap js -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<!-- jquery-ui js -->
<script type="text/javascript" src="js/jquery-ui.js"></script>
<!-- owl.carousel.min js -->
<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<!-- jtv-jtv-mobile-menu js -->
<script type="text/javascript" src="js/jtv-mobile-menu.js"></script>

<!-- countdown js -->
<script type="text/javascript" src="js/countdown.js"></script>

<!-- main js -->
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>