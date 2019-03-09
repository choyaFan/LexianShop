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
                        <div class="block block-tags">
                            <div class="block-title"><h3>类别选择</h3></div>
                            <div class="block-content">
                                <div class="tags-list"> <a href="#">类别6</a> </div>
                                <div class="actions"> <a href="#" class="view-all">查看所有类别</a> </div>
                            </div>
                        </div>
                        <div class="block product-price-range ">
                            <div class="block-title"><h3>价格区间</h3></div>
                            <div class="block-content">
                                <div class="slider-range">
                                    <div data-label-reasult="Range:" data-min="0" data-max="500" data-unit="$" class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all" data-value-min="50" data-value-max="350">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all" style="left: 10%; width: 60%;"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0" style="left: 10%;"/></div></div>
                                <div class="amount-range-price">范围: ¥10 - ¥550</div>
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="p1" name="cc">
                                        <label for="p1"> <span class="button"></span> ¥20 - ¥50<span class="count">(5)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p2" name="cc">
                                        <label for="p2"> <span class="button"></span> ¥50 - ¥100<span class="count">(10)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p3" name="cc">
                                        <label for="p3"> <span class="button"></span> ¥100 - ¥250<span class="count">(12)</span> </label>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="block block-compare">
                            <div class="block-title ">已选条件</div>
                            <div class="block-content">
                                <ol id="compare-items">
                                    <li class="item">
                                        <input type="hidden" value="2173" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#" class="product-name"></a>
                                        <a href="#" class="product-name">
                                            <i class="fa fa-angle-right"></i>条件1</a> </li>
                                    <li class="item">
                                        <input type="hidden" value="2173" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#" class="product-name"></a>
                                        <a href="#" class="product-name">
                                            <i class="fa fa-angle-right"></i>条件2</a> </li>
                                    <li class="item">
                                        <input type="hidden" value="2173" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="#" class="product-name"></a>
                                        <a href="#" class="product-name">
                                            <i class="fa fa-angle-right"></i>条件3</a> </li>
                                </ol>
                                <div class="ajax-checkout">
                                    <button type="submit" title="Submit" class="button button-compare"><span>重置</span></button>
                                    <button type="submit" title="Submit" class="button button-clear"><span>筛选</span></button>
                                </div>
                            </div>
                        </div>
                        <div class="block block-layered-nav">
                            <div class="block-title"><h3>所有类别</h3></div>
                            <div class="block-content">
                                <p class="block-subtitle">子标题</p>
                                <dl id="narrow-by-list">
                                    <dt class="odd">价格</dt>
                                    <dd class="odd">
                                        <ol>
                                            <li> <a href="#"><span class="price">¥0.00</span> - <span class="price">¥99.99</span></a> (6) </li>
                                            <li> <a href="#"><span class="price">¥100.00</span>及以上</a> (6) </li>
                                        </ol>
                                    </dd>
                                    <dt class="even">类别</dt>
                                    <dd class="even">
                                        <ol>
                                            <li> <a href="#">类别一</a> (20) </li>
                                            <li> <a href="#">类别二</a> (25) </li>
                                            <li> <a href="#">类别三</a> (8) </li>
                                            <li> <a href="#">类别四</a> (5) </li>
                                        </ol>
                                    </dd>
                                    <dt class="odd">其他条件</dt>
                                    <dd class="odd">
                                        <ol class="bag-material">
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">仅查询有货</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">其他功能1</a></li>
                                            <li> <a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">其他功能2</a></li>


                                        </ol>
                                    </dd>


                                </dl>
                            </div>
                        </div>

                        <div class="block block-cart">
                            <div class="block-title "><h3>我的购物车</h3></div>
                            <div class="block-content">
                                <div class="summary">
                                    <p class="amount">购物车中共有<a href="#">5</a>件商品</p>
                                    <p class="subtotal"> <span class="label">总价: </span> <span class="price">¥227.99</span> </p>
                                </div>
                                <div class="ajax-checkout">
                                    <button class="button button-checkout" title="Submit" type="submit"><span>下单</span></button>
                                </div>
                                <p class="block-subtitle">最近添加商品</p>
                                <ul>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img10.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">¥99.99</span>
                                            <p class="product-name"> <a href="#">商品1</a> </p>
                                        </div>
                                    </li>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img01.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">¥88.00</span>
                                            <p class="product-name"> <a href="#">商品2</a> </p>

                                            <!--access clearfix-->
                                        </div>
                                    </li>
                                    <li class="item"> <a href="#" title="Product Title Here" class="product-image"><img src="images/products/img05.jpg" alt="Product Title Here"></a>
                                        <div class="product-details">
                                            <div class="access"> <a href="#" title="Remove This Item" class="jtv-btn-remove"> <span class="icon"></span> Remove </a> </div>
                                            <strong>1</strong> x <span class="price">¥98.00</span>
                                            <p class="product-name"> <a href="#">商品3</a> </p>

                                            <!--access clearfix-->
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="custom-slider">
                            <div>
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li class="" data-target="#carousel-example-generic" data-slide-to="0"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                                    </ol>
                                    <div class="carousel-inner">
                                        <div class="item"><img src="images/slide3.jpg" alt="slide3">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">板块1</a></h3>
                                                <p>板块1的描述</p>
                                                <a class="link" href="#">按钮1</a></div>
                                        </div>
                                        <div class="item active"><img src="images/slide1.jpg" alt="slide1">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">板块2</a></h3>
                                                <p>板块2的描述</p>
                                            </div>
                                        </div>
                                        <div class="item"><img src="images/slide2.jpg" alt="slide2">
                                            <div class="carousel-caption">
                                                <h3><a title=" Sample Product" href="#">板块3</a></h3>
                                                <p>板块3的描述</p>
                                            </div>
                                        </div>
                                    </div>
                                    <a class="left carousel-control" href="#" data-slide="next"> <span class="sr-only">Next</span> </a></div>
                            </div>
                        </div>
                        <div class="block block-list block-viewed">
                            <div class="block-title"><h3>不知道干啥</h3> </div>
                            <div class="block-content">
                                <ol id="recently-viewed-items">
                                    <li class="item odd">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>第一行</a></p>
                                    </li>
                                    <li class="item even">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>第二行</a></p>
                                    </li>
                                    <li class="item last odd">
                                        <p class="product-name"><a href="#"><i class="fa fa-angle-right"></i>第三行</a></p>
                                    </li>
                                </ol>
                            </div>
                        </div>
                        <div class="block block-poll">
                            <div class="block-title"><h3>调查</h3> </div>
                            <form id="pollForm" action="#" method="post" onsubmit="return validatePollAnswerIsSelected();">
                                <div class="block-content">
                                    <p class="block-subtitle">对本搜索结果是否满意？</p>
                                    <ul id="poll-answers">
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_1" value="1">
                                            <span class="label">
                        <label for="vote_1">满意</label>
                        </span> </li>
                                        <li class="even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_2" value="2">
                                            <span class="label">
                        <label for="vote_2">基本满意</label>
                        </span> </li>
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_3" value="3">
                                            <span class="label">
                        <label for="vote_3">不太满意</label>
                        </span> </li>
                                        <li class="last even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_4" value="4">
                                            <span class="label">
                        <label for="vote_4">很不满意</label>
                        </span> </li>
                                    </ul>
                                    <div class="actions">
                                        <button type="submit" title="Vote" class="button button-vote"><span>提交</span></button>
                                    </div>
                                </div>
                            </form>
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
