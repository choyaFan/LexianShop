<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/8
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>订单支付</title>
    <link rel="stylesheet" href="css/style3.css">
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="css/checkOut.css" />
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
                            <div class="welcome-msg">欢迎来到派氏乐鲜生活馆</div>
                            <div class="dropdown jtv-language-box"> <a role="button" data-toggle="dropdown" data-target="#" class="block-language dropdown-toggle" href="#" aria-expanded="false"> <img src="images/flag-english.jpg" alt="language">中软中心店<span class="caret"></span> </a>
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

                            <!-- End Header Currency -->

                        </div>
                        <div class="col-xs-6 hidden-xs">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>

                                        <li> <a title="Favorites" href="#">收藏夹</a> </li>

                                        <li>
                                            <div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#">其他功能<span class="caret"></span></a>
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
                                        <li> <a href="#"><span class="hidden-xs">登陆</span></a> </li>
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
                                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">2</span><span class="price">购物车 / ¥259.00</span> </a> </div>
                                <div>
                                    <div class="jtv-top-cart-content">

                                        <!--block-subtitle-->
                                        <ul class="mini-products-list" id="cart-sidebar">
                                            <li class="item first">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.jsp"><img alt="Product Title Here" src="images/products/img01.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$79.99</span> </div>
                                                </div>
                                            </li>
                                            <li class="item">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.jsp"><img alt="Product Title Here" src="images/products/img02.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$88.89</span> </div>
                                                </div>
                                            </li>
                                            <li class="item last">
                                                <div class="item-inner"> <a class="product-image" title="Product Title Here" href="single_product.jsp"><img alt="Product Title Here" src="images/products/img04.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove" title="Remove This Item" href="#"><i class="icon-pencil"></i><span class="hidden">Edit item</span></a> </div>
                                                        <p class="product-name"><a href="#">Product Title Here</a> </p>
                                                        <strong>1</strong> x <span class="price">$85.99</span> </div>
                                                </div>
                                            </li>
                                        </ul>

                                        <!--actions-->
                                        <div class="actions">
                                            <button class="btn-checkout" title="Checkout" type="button" onclick=""><span>Checkout</span> </button>
                                            <a href="#" class="view-cart"><span>View Cart</span></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"> <h1><a title="eCommerce" href="index.jsp"><img alt="eCommerce" src="images/logo.png"> </a></h1> </div>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
                        <div class="search-box">
                            <form action="cat" method="POST" id="search_mini_form" name="Categories">
                                <input type="text" placeholder="搜索商品..." value="" maxlength="70" name="search" id="search">
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
<nav class="jtv-sticky-header">
    <div class="container">
        <div class="mm-toggle-wrap">
            <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span> </div>
        </div>
        <div class="nav-inner">
            <!-- BEGIN NAV -->
            <ul id="nav" class="hidden-xs">
                <li class="drop-menu"><a href="index.jsp" class="level-top active"><span>主页</span></a>

                </li>
                <li class="drop-menu"> <a href="#"> <span>一级1</span> </a>
                    <ul>
                        <li class="sub-cat"><a href="shop_grid.action"><span>Shop Grid</span></a>
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
                        <li> <a href="single_product.jsp"> <span>Single Product</span> </a> </li>
                        <li> <a href="#"> <span>Shopping Cart</span> </a> </li>
                        <li><a href="#"><span>Checkout</span></a> </li>
                        <li> <a href="#"> <span>Wishlist</span> </a> </li>
                        <li><a href="#"><span>Compare</span></a> </li>
                        <li><a href="#"><span>Quick View</span></a> </li>
                        <li><a href="#"><span>404 Error Page</span></a> </li>
                    </ul>
                </li>
                <li class="mega-menu"> <a class="level-top" href="shop_grid.jsp"><span>一级2</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center">
                                <div class="col-1">
                                    <ul class="level0">
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Apples</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Aurore Grape</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Super Sweet</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Gravenstein</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Orange Pippin</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Grapes</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Raw Honey</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Flavored Honey</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Propolis</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Exotic Honey</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Citruses</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Potatoes</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Tomatoes</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Pickles</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Cauliflowers</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Exotic Fruits</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Spinach</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Pumpkin</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Kohlrabi</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Green Cabbage</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Summer Berries</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Avocado</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Paprika</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Cheese Holand</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Cheese</span></a> </li>
                                            </ul>
                                        </li>
                                        <li class="parent item"> <a href="shop_grid.jsp"><span>Green Cabbage</span></a>
                                            <ul class="level1">
                                                <li> <a href="shop_grid.jsp"><span>Сauliflower</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Tomato</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Oranges</span></a> </li>
                                                <li> <a href="shop_grid.jsp"><span>Carrots</span></a> </li>
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
                <li class="mega-menu"> <a class="level-top" href="shop_grid.jsp"><span>一级2</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center">
                                <ul class="level0">
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Herbs and spices</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Lemon Grass</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Rosemary</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Chamomile</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Oregano</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Root vegetables</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Celeriac</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Daikon</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Rutabaga</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Parsnip</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Onion family</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Chives</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Shallot</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Onion</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Garlic</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Legumes</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Black beans</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Kidney beans</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Green beans</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Soy beans</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Haricot bean</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Nectarine</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Charles &amp; Keith</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Fruits</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Rhubarb</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Kiwi fruit</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Mango</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Orange</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Pepper</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Quince</span></a> </li>
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
                <li class="mega-menu"> <a class="level-top" href="shop_grid.jsp"><span>一级3</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center">
                                <ul class="level0">
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Vegetables</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Tomatoes</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Potatoes</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Carrots</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Cauliflowers</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Fruit</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Mango</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Orange</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Pepper</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Quince</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Whole Grains</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Cereals</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Noodles</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Rice</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Pasta</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Protein</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Nutrition</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Biosynthesis</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Enzymes</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Chronic Diseases</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Low-Fat Dairy</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Skim milk</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Fat-free cheese</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Strawberries</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Salad with olives</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Healthy Snack Food</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Pumpkin Seeds</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>String Cheese</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Celery</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Cottage Cheese</span></a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </li>
                <li class="mega-menu"> <a class="level-top" href="shop_grid.jsp"><span>一级4</span></a>
                    <div class="jtv-menu-block-wrapper">
                        <div class="jtv-menu-block-wrapper2">
                            <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                                <ul class="level0">
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Cold drinks</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Fayrouz</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Mirinda</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>AMP Energy</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Mountain Dew</span></a> </li>
                                        </ul>               </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Hot drinks</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Apple cider</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Butter tea</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Irish coffee</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Mate cocido</span></a> </li>
                                        </ul>
                                    </li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Fruit drinks</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Strawberry Lemonade</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Apple Cider</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Watermelontinis</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Sparkling Sangria</span></a> </li>
                                        </ul></li>
                                    <li class="parent item"> <a href="shop_grid.jsp"><span>Mixed drinks</span></a>
                                        <ul class="level1">
                                            <li> <a href="shop_grid.jsp"><span>Like Hand Grenade</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Miami Vice</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Blue Lagoon</span></a> </li>
                                            <li> <a href="shop_grid.jsp"><span>Jungle Juice</span></a> </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                            <div class="nav-block nav-block-right std jtv-menu-box-right"><img src="images/menu-img5.jpg" alt="menu img"> </div>
                        </div>
                    </div>
                </li>
                <li class="mega-menu"> <a class="level-top" href="#"><span>一级5</span></a> </li>
                <li class="nav-custom-link mega-menu"> <a href="#" class="level-top"> <span>一级6</span> </a>
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

    <!-- our features -->
    <div class="our-features-box hidden-xs">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box first"> <i class="icon-plane icons"></i>
                        <div class="content">
                            <h6>Free & Next Day Delivery</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box"> <i class="icon-earphones-alt icons"></i>
                        <div class="content">
                            <h6>Support 24/7 For Clients</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box"> <i class="icon-like icons"></i>
                        <div class="content">
                            <h6>100% Satisfaction Guarantee</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box last"> <i class="icon-tag icons"></i>
                        <div class="content">
                            <h6>Great Daily Deals Discount</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<!--收货地址body部分开始-->
<div class="border_top_cart">
    <script type="text/javascript">
        var checkoutConfig={
            addressMatch:'common',
            addressMatchVarName:'data',
            hasPresales:false,
            hasBigTv:false,
            hasAir:false,
            hasScales:false,
            hasGiftcard:false,
            totalPrice:244.00,
            postage:10,//运费
            postFree:true,//活动是否免邮了
            bcPrice:150,//计算界值
            activityDiscountMoney:0.00,//活动优惠
            showCouponBox:0,
            invoice:{
                NA:"0",
                personal:"1",
                company:"2",
                electronic:"4"
            }
        };
        var miniCartDisable=true;
    </script>
    <div class="container">
        <div class="checkout-box">
            <form  id="checkoutForm" action="#" method="post">
                <div class="checkout-box-bd">
                    <!-- 地址状态 0：默认选择；1：新增地址；2：修改地址 -->
                    <input type="hidden" name="Checkout[addressState]" id="addrState"   value="0">
                    <!-- 收货地址 -->
                    <div class="xm-box">
                        <div class="box-hd ">
                            <h2 class="title">收货地址</h2>
                            <!---->
                        </div>
                        <div class="box-bd">
                            <div class="clearfix xm-address-list" id="checkoutAddrList">
                                <dl class="item" >
                                    <dt>
                                        <strong class="itemConsignee">潘骏杰</strong>
                                        <span class="itemTag tag">已选择</span>
                                    </dt>
                                    <dd>
                                        <p class="tel itemTel">15961726437</p>
                                        <p class="itemRegion">江苏 无锡市 北塘区</p>
                                        <p class="itemStreet">民丰西苑82号202室(214045)</p>
                                    </dd>
                                </dl>
                            </div>
                        </div>                </div>
                    <!-- 收货地址 END-->
                    <div id="checkoutPayment">
                        <!-- 支付方式 -->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">支付方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutPaymentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <input type="radio" name="Checkout[pay_id]" checked="checked" value="1">
                                        <p>
                                            钱包支付                                <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 支付方式 END-->
                        <div class="xm-box">
                            <div class="box-hd ">
                                <h2 class="title">配送方式</h2>
                            </div>
                            <div class="box-bd">
                                <ul id="checkoutShipmentList" class="checkout-option-list clearfix J_optionList">
                                    <li class="item selected">
                                        <input type="radio" data-price="0" name="Checkout[shipment_id]" checked="checked" value="1">
                                        <p>
                                            门店自提                               <span></span>
                                        </p>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- 配送方式 END-->                    <!-- 配送方式 END-->
                    </div>
                    <!-- 送货时间 -->
                    <div class="xm-box">
                        <div class="box-hd">
                            <h2 class="title">送货时间</h2>
                        </div>
                        <div class="box-bd">
                            <ul class="checkout-option-list clearfix J_optionList">
                                <li class="item selected"><input type="radio" checked="checked" name="Checkout[best_time]" value="1"><p>不限送货时间<span>周一至周日</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="2"><p>工作日送货<span>周一至周五</span></p></li><li class="item "><input type="radio"  name="Checkout[best_time]" value="3"><p>双休日、假日送货<span>周六至周日</span></p></li>                        </ul>
                        </div>
                    </div>
                    <!-- 送货时间 END-->
                    <!-- 发票信息 -->
                    <div id="checkoutInvoice">
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">发票信息</h2>
                            </div>
                            <div class="box-bd">
                                <ul class="checkout-option-list checkout-option-invoice clearfix J_optionList J_optionInvoice">
                                    <li class="hide">
                                        电子个人发票4
                                    </li>
                                    <li class="item selected">
                                        <!--<label><input type="radio"  class="needInvoice" value="0" name="Checkout[invoice]">不开发票</label>-->
                                        <input type="radio"    checked="checked"  value="4" name="Checkout[invoice]">
                                        <p>电子发票（非纸质）</p>
                                    </li>
                                    <li class="item ">
                                        <input type="radio"   value="1" name="Checkout[invoice]">
                                        <p>普通发票（纸质）</p>
                                    </li>
                                </ul>
                                <p id="eInvoiceTip" class="e-invoice-tip ">
                                    电子发票是税务局认可的有效凭证，可作为售后维权凭据，不随商品寄送。开票后不可更换纸质发票，如需报销请选择普通发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a>
                                </p>
                                <div class="invoice-info nvoice-info-1" id="checkoutInvoiceElectronic" style="display:none;">

                                    <p class="tip">电子发票目前仅对个人用户开具，不可用于单位报销 ，不随商品寄送</p>
                                    <p>发票内容：购买商品明细</p>
                                    <p>发票抬头：个人</p>
                                    <p>
                                        <span class="hide"><input type="radio" value="4" name="Checkout[invoice_type]"   checked="checked"   id="electronicPersonal" class="invoiceType"></span>
                                    <dl>
                                        <dt>什么是电子发票?</dt>
                                        <dd>&#903; 电子发票是纸质发票的映像，是税务局认可的有效凭证，与传统纸质发票具有同等法律效力，可作为售后维权凭据。</dd>
                                        <dd>&#903; 开具电子服务于个人，开票后不可更换纸质发票，不可用于单位报销。</dd>
                                        <dd>&#903; 您在订单详情的"发票信息"栏可查看、下载您的电子发票。<a href="http://bbs.xiaomi.cn/thread-9285999-1-1.html" target="_blank">什么是电子发票？</a></dd>
                                    </dl>
                                    </p>
                                </div>
                                <div class="invoice-info invoice-info-2" id="checkoutInvoiceDetail"  style="display:none;" >
                                    <p>发票内容：购买商品明细</p>
                                    <p>
                                        发票抬头：请确认单位名称正确,以免因名称错误耽搁您的报销。注：合约机话费仅能开个人发票
                                    </p>
                                    <ul class="type clearfix J_invoiceType">
                                        <li class="hide">
                                            <input type="radio" value="0" name="Checkout[invoice_type]" id="noNeedInvoice" >
                                        </li>
                                        <li class="">
                                            <input  class="invoiceType" type="radio" id="commonPersonal" name="Checkout[invoice_type]" value="1" >
                                            个人
                                        </li>
                                        <li class="">
                                            <input  class="invoiceType" type="radio" name="Checkout[invoice_type]" value="2" >
                                            单位
                                        </li>
                                    </ul>
                                    <div  id='CheckoutInvoiceTitle' class=" hide  invoice-title">
                                        <label for="Checkout[invoice_title]">单位名称：</label>
                                        <input name="Checkout[invoice_title]" type="text" maxlength="49" value="" class="input"> <span class="tip-msg J_tipMsg"></span>
                                    </div>

                                </div>

                            </div>
                        </div>                </div>
                    <!-- 发票信息 END-->
                </div>
                <div class="checkout-box-ft">
                    <!-- 商品清单 -->
                    <div id="checkoutGoodsList" class="checkout-goods-box">
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">确认订单信息</h2>
                            </div>
                            <div class="box-bd">
                                <dl class="checkout-goods-list">
                                    <dt class="clearfix">
                                        <span class="col col-1">商品名称</span>
                                        <span class="col col-2">购买价格</span>
                                        <span class="col col-3">购买数量</span>
                                        <span class="col col-4">小计（元）</span>
                                    </dt>
                                    <% int i = 0; pageContext.setAttribute("i", i); %>
                                    <c:forEach items="${productsList}" var="product">
                                        <dd class="item clearfix">
                                            <div class="item-row">
                                                <div class="col col-1">
                                                    <div class="g-pic">
                                                        <img src="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!40x40.jpg" srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40" height="40" />
                                                    </div>
                                                    <div class="g-info">
                                                        <a href="#">
                                                            <c:out value="${product.productName}"/>                                           </a>
                                                    </div>
                                                </div>

                                                <div class="col col-2">${ordersList.get(i).singlePrice}</div>
                                                <div class="col col-3">${ordersList.get(i).amount}</div>
                                                <div class="col col-4">${ordersList.get(i).singlePrice * ordersList.get(i).amount}</div>
                                                <% i++; pageContext.setAttribute("i", i);%>
                                            </div>
                                        </dd>
                                    </c:forEach>
                                </dl>
                                <div class="checkout-count clearfix">
                                    <div class="checkout-count-extend xm-add-buy">
                                        <h3 class="title">会员留言</h3></br>
                                            <input type="text" />

                                    </div>
                                    <!-- checkout-count-extend -->
                                    <div class="checkout-price">
                                        <ul>

                                            <li>
                                                订单总额：<span>${ordersList.get(0).totalPrice}</span>
                                            </li>
                                            <li>
                                                活动优惠：<span>-0元</span>
                                            </li>
                                            <li>
                                                优惠券抵扣：<span id="couponDesc">-0元</span>
                                            </li>
                                            <li>
                                                运费：<span id="postageDesc">0元</span>
                                            </li>
                                        </ul>
                                        <p class="checkout-total">应付总额：<span><strong id="totalPrice">${ordersList.get(0).totalPrice}</strong>元</span></p>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 商品清单 END -->
                    <input type="hidden"  id="couponType" name="Checkout[couponsType]">
                    <input type="hidden" id="couponValue" name="Checkout[couponsValue]">
                    <div class="checkout-confirm">

                        <a href="#" class="btn btn-lineDakeLight btn-back-cart">返回购物车</a>
                        <input type="submit" class="btn btn-primary" value="立即下单" id="checkoutToPay" />
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- 保险弹窗 -->
    <!-- 保险弹窗 -->
    <script src="js/base.min.js"></script>
    <script type="text/javascript" src="js/address_all.js"></script>
    <script type="text/javascript" src="js/checkout.min.js"></script>
</div>


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
