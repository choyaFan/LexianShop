<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic page needs -->
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->

    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title></title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Mobile specific metas  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="js/jquery.min.js"></script>

    <!-- CSS Style -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <link rel="stylesheet" href="css/style3.css">
    <link rel="stylesheet" href="css/revolution-slider.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/quick_view_popup.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <link rel="stylesheet" href="css/jtv-mobile-menu.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/jquery.fancybox.css">
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>

    <!-- import Vue.js -->
    <script src="js/vue.min.js"></script>
    <!-- import stylesheet -->
    <link rel="stylesheet" href="css/iview.css">
    <!-- import iView -->
    <script src="js/iview.min.js"></script>

</head>

<body class="single-product-page">
<!-- mobile menu -->
<div id="jtv-mobile-menu">
    <ul>
        <li>
            <div class="jtv-search-mob">
                <form id="search1" name="search">
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="fa fa-search"></i> </button>
                        </div>
                        <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term" id="srch-term">
                    </div>
                </form>
            </div>
        </li>
        <li><a href="index.html">Home</a>

        </li>
        <li><a href="#">Pages</a>
            <ul>
                <li><a href="shop_grid.shop_grid.jsp"><span>Shop Grid</span></a>
                    <ul>
                        <li> <a href="#"> <span>Shop Grid Right Sidebar</span> </a> </li>
                        <li> <a href="#"> <span>Shop Grid Fullwidth</span> </a> </li>
                    </ul>
                </li>
                <li> <a href="#"> <span>Shop List</span> </a>
                    <ul>
                        <li> <a href="#"> <span>Shop List Right Sidebar</span> </a> </li>
                    </ul>
                </li>
                <li> <a href="single_product.single_product.jsp"> <span>Single Product</span> </a> </li>
                <li> <a href="#"> <span>Shopping Cart</span> </a> </li>
                <li><a href="#"><span>Checkout</span></a> </li>
                <li> <a href="#"> <span>Wishlist</span> </a> </li>
                <li><a href="#"><span>Compare</span></a> </li>
                <li><a href="#"><span>Quick View</span></a> </li>
                <li><a href="#"><span>404 Error Page</span></a> </li>
            </ul>
        </li>
        <li><a href="#">Fruits</a>
            <ul>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Apples</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Aurore Grape</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Super Sweet</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Gravenstein</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Orange Pippin</span></a> </li>
                    </ul>
                </li>f
                <li> <a href="shop_grid.shop_grid.jsp"><span>Grapes</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Raw Honey</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Flavored Honey</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Propolis</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Exotic Honey</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Citruses</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Potatoes</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Tomatoes</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Pickles</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Cauliflowers</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Exotic Fruits</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Spinach</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Pumpkin</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Kohlrabi</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Green Cabbage</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Summer Berries</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Avocado</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Paprika</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Cheese Holand</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Cheese</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Green Cabbage</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Сauliflower</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Tomato</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Oranges</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Carrots</span></a> </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="shop_grid.shop_grid.jsp">Vegetables</a>
            <ul>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Herbs and spices</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Lemon Grass</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Rosemary</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Chamomile</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Oregano</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Root vegetables</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Celeriac</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Daikon</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Rutabaga</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Parsnip</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Onion family</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Chives</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Shallot</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Onion</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Garlic</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Legumes</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Black beans</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Kidney beans</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Green beans</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Soy beans</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Haricot bean</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Nectarine</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Charles & Keith</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Fruits</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Rhubarb</span></a> </li>
                    </ul>
                </li>
                <li> <a href="shop_grid.shop_grid.jsp"><span>Kiwi fruit</span></a>
                    <ul>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Mango</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Orange</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Pepper</span></a> </li>
                        <li> <a href="shop_grid.shop_grid.jsp"><span>Quince</span></a> </li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="shop_grid.shop_grid.jsp">Healthy Eating</a> </li>
        <li><a href="shop_grid.shop_grid.jsp">Drinks</a> </li>
        <li><a href="#">Blog</a> </li>
        <li><a href="#">Contact us</a> </li>
    </ul>
    <div class="jtv-top-link-mob">
        <ul class="links">
            <li><a title="My Account" href="#">My Account</a> </li>
            <li><a title="Wishlist" href="#">Wishlist</a> </li>
            <li><a title="Checkout" href="#">Checkout</a> </li>
            <li><a title="Blog" href="#"><span>Blog</span></a> </li>
            <li class="last"><a title="Login" href="#"><span>Login</span></a> </li>
        </ul>
    </div>
</div>
<div id="page">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <!-- Header Language -->
                        <div class="col-xs-12 col-sm-9">
                            <div class="welcome-msg col-sm-3">欢迎来到派氏乐鲜生活馆</div>

                            <!-- End Header Language -->


                            <!-- Header Currency -->

                            <!-- End Header Currency -->

                        </div>
                        <div class="col-sm-3">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>

                                        <li><a title="Favorites" href="#">收藏夹</a></li>

                                        <li>
                                            <div class="dropdown block-company-wrapper hidden-xs"><a role="button"
                                                                                                     data-toggle="dropdown"
                                                                                                     data-target="#"
                                                                                                     class="block-company dropdown-toggle"
                                                                                                     href="#">其他功能<span
                                                    class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="about_us.html"> About Us </a></li>
                                                    <li><a href="#"> Customer Service </a></li>
                                                    <li><a href="#"> Privacy Policy </a></li>
                                                    <li><a href="#">Site Map </a></li>
                                                    <li><a href="#">Search Terms </a></li>
                                                    <li><a href="#">Advanced Search </a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="#"><span class="hidden-xs">登陆</span></a></li>
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
                                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"><a
                                        href="#"> <span class="cart_count">2</span><span
                                        class="price">购物车 / ¥259.00</span> </a></div>
                                <div>
                                    <div class="jtv-top-cart-content">

                                        <!--block-subtitle-->
                                        <ul class="mini-products-list" id="cart-sidebar">
                                            <li class="item first">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.jsp"><img
                                                        alt="Product Title Here" src="images/products/img01.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item" href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$79.99</span></div>
                                                </div>
                                            </li>
                                            <li class="item">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.jsp"><img
                                                        alt="Product Title Here" src="images/products/img02.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item" href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$88.89</span></div>
                                                </div>
                                            </li>
                                            <li class="item last">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.jsp"><img
                                                        alt="Product Title Here" src="images/products/img04.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item" href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$85.99</span></div>
                                                </div>
                                            </li>
                                        </ul>

                                        <!--actions-->
                                        <div class="actions">
                                            <button class="btn-checkout" title="Checkout" type="button" onclick="#">
                                                <span>Checkout</span></button>
                                            <a href="#" class="view-cart"><span>View Cart</span></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"><h1><a title="eCommerce" href="index.jsp"><img alt="eCommerce"
                                                                                         src="images/logo.png"> </a>
                        </h1></div>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
                        <div class="search-box">
                            <input type="text" placeholder="搜索商品..." value="" maxlength="70" name="search" id="search"
                                   onkeypress="EnterButtonPress()" onkeydown="EnterButtonPress()">
                            <!--<button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>-->
                            <button id="searchbutton" type="button" class="search-btn-bg"
                                    onclick="location.href = 'search_products?'+'&searchKey='+document.getElementById('search').value">
                                <span class="glyphicon glyphicon-search"></span>&nbsp;
                            </button>
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
                <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span></div>
            </div>
            <div class="nav-inner">
                <!-- BEGIN NAV -->
                <ul id="nav" class="hidden-xs">
                    <li class="drop-menu"><a href="index.jsp" class="level-top active"><span>主页</span></a>

                    </li>
                    <li class="drop-menu"><a href="#"> <span>一级1</span> </a>
                        <ul>
                            <li class="sub-cat"><a href="shop_grid.action"><span>Shop Grid</span></a>
                                <ul>
                                    <li><a href="#"> <span>Shop Grid Right Sidebar</span> </a></li>
                                    <li><a href="#"> <span>Shop Grid Fullwidth</span> </a></li>
                                </ul>
                            </li>
                            <li class="sub-cat"><a href="#"> <span>Shop List</span> </a>
                                <ul>
                                    <li><a href="#"> <span>Shop List Right Sidebar</span> </a></li>
                                </ul>
                            </li>
                            <li><a href="single_product.jsp"> <span>Single Product</span> </a></li>
                            <li><a href="#"> <span>Shopping Cart</span> </a></li>
                            <li><a href="#"><span>Checkout</span></a></li>
                            <li><a href="#"> <span>Wishlist</span> </a></li>
                            <li><a href="#"><span>Compare</span></a></li>
                            <li><a href="#"><span>Quick View</span></a></li>
                            <li><a href="#"><span>404 Error Page</span></a></li>
                        </ul>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.jsp"><span>一级2</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <div class="col-1">
                                        <ul class="level0">
                                            <li class="parent item"><a href="shop_grid.jsp"><span>Apples</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Aurore Grape</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Super Sweet</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Gravenstein</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Orange Pippin</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.jsp"><span>Grapes</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Raw Honey</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Flavored Honey</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Propolis</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Exotic Honey</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.jsp"><span>Citruses</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Potatoes</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Tomatoes</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Pickles</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Cauliflowers</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a
                                                    href="shop_grid.jsp"><span>Exotic Fruits</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Spinach</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Pumpkin</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Kohlrabi</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Green Cabbage</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.jsp"><span>Summer Berries</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Avocado</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Paprika</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Cheese Holand</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Cheese</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a
                                                    href="shop_grid.jsp"><span>Green Cabbage</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.jsp"><span>Сauliflower</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Tomato</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Oranges</span></a></li>
                                                    <li><a href="shop_grid.jsp"><span>Carrots</span></a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-2">
                                        <div class="jtv-nav-image1"><a title="" href="#"><img alt="menu_image"
                                                                                              src="images/menu-img1.jpg">
                                        </a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.jsp"><span>一级2</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"><a
                                                href="shop_grid.jsp"><span>Herbs and spices</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Lemon Grass</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Rosemary</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Chamomile</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Oregano</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Root vegetables</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Celeriac</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Daikon</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Rutabaga</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Parsnip</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Onion family</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Chives</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Shallot</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Onion</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Garlic</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Legumes</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Black beans</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Kidney beans</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Green beans</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Soy beans</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Haricot bean</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Nectarine</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Charles &amp; Keith</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Fruits</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Rhubarb</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Kiwi fruit</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Mango</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Orange</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Pepper</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Quince</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="jtv-nav-banner">
                                    <div class="jtv-banner-box">
                                        <div class="jtv-nav-banner-img"><a href="#"><img src="images/menu-img2.jpg"
                                                                                         alt="Handbag"> </a></div>
                                    </div>
                                    <div class="jtv-banner-box">
                                        <div class="jtv-nav-banner-img"><a href="#"><img src="images/menu-img3.jpg"
                                                                                         alt="Handbag"> </a></div>
                                    </div>
                                    <div class="jtv-banner-box jtv-banner-box_last">
                                        <div class="jtv-nav-banner-img"><a href="#"><img src="images/menu-img4.jpg"
                                                                                         alt="Handbag"> </a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.jsp"><span>一级3</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Vegetables</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Tomatoes</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Potatoes</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Carrots</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Cauliflowers</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Fruit</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Mango</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Orange</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Pepper</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Quince</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Whole Grains</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Cereals</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Noodles</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Rice</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Pasta</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Protein</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Nutrition</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Biosynthesis</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Enzymes</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Chronic Diseases</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Low-Fat Dairy</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Skim milk</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Fat-free cheese</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Strawberries</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Salad with olives</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Healthy Snack Food</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Pumpkin Seeds</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>String Cheese</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Celery</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Cottage Cheese</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.jsp"><span>一级4</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                                    <ul class="level0">
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Cold drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Fayrouz</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Mirinda</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>AMP Energy</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Mountain Dew</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Hot drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Apple cider</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Butter tea</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Irish coffee</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Mate cocido</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Fruit drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Strawberry Lemonade</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Apple Cider</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Watermelontinis</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Sparkling Sangria</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.jsp"><span>Mixed drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.jsp"><span>Like Hand Grenade</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Miami Vice</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Blue Lagoon</span></a></li>
                                                <li><a href="shop_grid.jsp"><span>Jungle Juice</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="nav-block nav-block-right std jtv-menu-box-right"><img
                                        src="images/menu-img5.jpg" alt="menu img"></div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="#"><span>一级5</span></a></li>
                    <li class="nav-custom-link mega-menu"><a href="#" class="level-top"> <span>一级6</span> </a>
                        <div class="jtv-menu-block-wrapper custom-menu">
                            <div class="header-nav-dropdown-wrapper">
                                <div class="jtv-custom-box"><i class="fa fa-laptop"></i>
                                    <h6 class="heading">100% Responsive Design</h6>
                                    <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
                                        doloremque laudantium.</p>
                                </div>
                                <div class="jtv-custom-box"><i class="fa fa-book"></i>
                                    <h6 class="heading">Easy Document</h6>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dignissim erat ut
                                        laoreet pharetra.</p>
                                </div>
                                <div class="jtv-custom-box"><i class="fa fa-fort-awesome"></i>
                                    <h6 class="heading">Awesome Icon Fonts</h6>
                                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                        aliquip ex ea commodo consequat.</p>
                                </div>
                                <div class="jtv-custom-box"><i class="fa fa-home"></i>
                                    <h6 class="heading">1 Layout Home Pages</h6>
                                    <p>Duis aute irure dolor in reprehenderit in voluptate velit. Lorem ipsum dolor sit
                                        amet, consectetur adipiscing elit.</p>
                                </div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- end nav -->
    <div class="main-container col2-right-layout">
        <div class="main container">
            <div class="row">
                <section class="wow">
                    <div>
                        <div class="my-account">
                            <c:choose>
                                <c:when test="${empty wishProductList}">
                                    <h3 class="page-heading"><span class="page-heading-title">您还没有添加过收藏，您可以 👀️：</span></h3>
                                    <!--<div class="container">-->
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="blog-outer-container">
                                                <div class="jtv-title">
                                                    <h3>尝试如下操作</h3>
                                                </div>
                                                <div class="blog-inner">
                                                    <div class="col-sm-4">
                                                        <div class="entry-thumb"><a href="blog_single_post.jsp"> <img
                                                                alt="Blog" src="images/blog-img1.jpg"> </a></div>
                                                        <div class="blog-preview_info">
                                                            <h4>搜索并发现喜欢的商品</h4>
                                                            <ul class="post-meta">
                                                                <li><i class="fa fa-search"></i>在商品浏览界面和商品详情界面，可以点击❤️添加收藏
                                                                </li>
                                                            </ul>
                                                            <div class="search-box">
                                                                <input type="text" placeholder="搜索商品..." value=""
                                                                       maxlength="70" name="search2" id="search2"
                                                                       onkeypress="EnterAPress()" onkeydown="EnterAPress()">
                                                                <!--<button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>-->

                                                            </div>
                                                            <br>
                                                            <a id="searcha" class="blog-preview_btn"
                                                               onclick="location.href = 'search_products?'+'&searchKey='+document.getElementById('search2').value">搜索
                                                                <i class="fa fa-long-arrow-right"></i></a></div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="entry-thumb"><a href="blog_single_post.jsp"> <img
                                                                alt="Blog" src="images/blog-img2.jpg"> </a></div>
                                                        <div class="blog-preview_info">
                                                            <h4>浏览其他商品</h4>
                                                            <ul class="post-meta">
                                                                <li><i class="fa fa-user"></i><a href="#">浏览我们为您精心推荐的商品</a>
                                                                </li>
                                                            </ul>
                                                            <aside class="sidebar">
                                                                <div class="block block-cart">
                                                                    <div class="block-content">
                                                                        <ul>
                                                                            <li class="item"><a href="#"
                                                                                                title="Product Title Here"
                                                                                                class="product-image"><img
                                                                                    src="images/products/img10.jpg"
                                                                                    alt="Product Title Here"></a>
                                                                                <a href="#"><strong>商品1
                                                                                    <br>$120</strong></a>
                                                                                <div class="blog-preview_desc">
                                                                                    尝试使用更短的搜索关键词，可以扩大商品的搜索范围
                                                                                </div>
                                                                            </li>
                                                                            <li class="item"><a href="#"
                                                                                                title="Product Title Here"
                                                                                                class="product-image"><img
                                                                                    src="images/products/img10.jpg"
                                                                                    alt="Product Title Here"></a>
                                                                                <a href="#"><strong>商品1
                                                                                    <br>$120</strong></a>
                                                                                <div class="blog-preview_desc">
                                                                                    尝试使用更短的搜索关键词，可以扩大商品的搜索范围
                                                                                </div>
                                                                            </li>

                                                                            <li class="item"><a href="#"
                                                                                                title="Product Title Here"
                                                                                                class="product-image"><img
                                                                                    src="images/products/img10.jpg"
                                                                                    alt="Product Title Here"></a>
                                                                                <a href="#"><strong>商品1
                                                                                    <br>$120</strong></a>
                                                                                <div class="blog-preview_desc">
                                                                                    尝试使用更短的搜索关键词，可以扩大商品的搜索范围
                                                                                </div>
                                                                            </li>

                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </aside>
                                                            <a class="blog-preview_btn" href="blog_single_post.jsp">换一批<i
                                                                    class="fa fa-refresh"></i></a></div>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <div class="entry-thumb"><a href="blog_single_post.jsp"> <img
                                                                alt="Blog" src="images/blog-img3.jpg"> </a></div>
                                                        <div class="blog-preview_info">
                                                            <h4>已经放入购物车中?</h4>
                                                            <ul class="post-meta">
                                                                <li><i class="fa fa-shopping-basket"></i>购物车中有您准备购买的商品</li>
                                                            </ul>
                                                            <br/>
                                                            <a class="blog-preview_btn" href="blog_single_post.jsp">查看购物车
                                                                <i class="fa fa-long-arrow-right"></i></a></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!--</div>-->
                                </c:when>
                                <c:otherwise>
                                    <div class="page-title">
                                        <h1>我的收藏</h1>
                                    </div>
                                    <div class="my-wishlist">
                                        <div class="table-responsive">
                                            <form method="post" action="#" id="wishlist-view-form">
                                                <fieldset>

                                                    <table class="wishlist-table data-table">
                                                        <thead>
                                                        <tr class="first last">
                                                            <th class="customer-wishlist-item-image"></th>
                                                            <th class="customer-wishlist-item-info"></th>
                                                            <th class="customer-wishlist-item-quantity">门店名称</th>
                                                            <th class="customer-wishlist-item-price">单价</th>
                                                            <th class="customer-wishlist-item-cart">库存状态</th>
                                                            <th class="customer-wishlist-item-remove"></th>
                                                        </tr>
                                                        </thead>
                                                        <tbody id="app">

                                                        <c:forEach items="${wishProductList}" var="wishProduct" varStatus="sta">
                                                            <tr id=${wishProduct.productId} class="first">
                                                                <td class="wishlist-cell0 customer-wishlist-item-image"><a title=${wishProduct.productName} href="single_pro?productId=${product.productId}" class="product-image"> <img width="150" alt=${wishProduct.productName} src=${wishProduct.pic1Url}> </a></td>
                                                                <td class="wishlist-cell1 customer-wishlist-item-info"><h3 class="product-name"><a title=${wishProduct.productName} href="single_pro?productId=${product.productId}">${wishProduct.productName}</a></h3>
                                                                    <div class="description std">
                                                                        <div class="inner">${wishProduct.productBriefIntroduction}</div>
                                                                    </div>

                                                                <td data-rwd-label="Quantity" class="wishlist-cell2 customer-wishlist-item-quantity"><div class="cart-cell">

                                                                        <p>${wishProduct.storeName}</p></div>

                                                                </div></td>
                                                                <td data-rwd-label="Price" class="wishlist-cell3 customer-wishlist-item-price"><div class="cart-cell">
                                                                    <div class="price-box"> <span id="product-price-39" class="regular-price"> <span class="price">
                                                                <fmt:formatNumber value="${wishProduct.originalPrice*wishProduct.discount}" type="currency" pattern="¥.00"/> / ${singleProduct.unit}
                                                            </span> </span> </div>
                                                                </div></td>
                                                                <td class="wishlist-cell4 customer-wishlist-item-cart"><p>
                                                                    <c:choose>
                                                                        <c:when test="${wishProduct.productStatus eq 0}">
                                                                            已下架
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <c:choose>
                                                                                <c:when test="${wishProduct.inventory gt 0}">
                                                                                    有货
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    无货
                                                                                </c:otherwise>
                                                                            </c:choose>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </p></td>
                                                                <td class="wishlist-cell4 customer-wishlist-item-cart"><p>
                                                                    <a @click="success(true)" onclick="wait_and_go${sta.index}()">快速加入购物车</a>
                                                                    <script>
                                                                        function wait_and_go${sta.index}() {
                                                                            setTimeout("window.location.href=('add_shopping_cart?productId=${wishProduct.productId}'+'&storeId=${wishProduct.storeId}'+'&amount=1&direction=1')",3000);
                                                                        }
                                                                    </script>
                                                                </p> </td>
                                                                <td class="wishlist-cell5 customer-wishlist-item-remove last"><a class="remove-item" title="Clear Cart" href="delete_wish?productId=${wishProduct.productId}+&storeId=${wishProduct.storeId}"><span><span></span></span></a></td>
                                                            </tr>
                                                        </c:forEach>
                                                        </tbody>
                                                    </table>
                                                    <div class="buttons-set buttons-set2">
                                                        <button class="button btn-share" title="Share Wishlist" name="save_and_share" type="button"><span>全部加入购物车</span></button>
                                                        <button class="button btn-update" onclick="window.location.href='delete_all'" title="Update Wishlist" name="do" type="button"><span>全部删除</span></button>
                                                    </div>
                                                </fieldset>
                                            </form>
                                        </div>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </section>
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
                                <li><a href="account_page.html">Account</a></li>
                                <li><a href="wishlist.html">Wishlist</a></li>
                                <li><a href="shopping_cart.html">Shopping Cart</a></li>
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
                                <li><a href="sitemap.html">Sites Map </a></li>
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
                                        <input class="newsletter-email" name="Email" placeholder="Enter Your Email">
                                        <button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
                                    </div>
                                </form>
                            </div>
                            <div class="social">
                                <h5>Follow Us</h5>
                                <ul class="inline-mode">
                                    <li class="social-network fb"><a title="Connect us on Facebook" target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
                                    <li class="social-network googleplus"><a title="Connect us on Google+" target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a></li>
                                    <li class="social-network tw"><a title="Connect us on Twitter" target="_blank" href="https://twitter.com/"><i class="icon-social-twitter icons"></i></a></li>
                                    <li class="social-network linkedin"><a title="Connect us on Linkedin" target="_blank" href="https://www.pinterest.com/"><i class="fa fa-linkedin"></i></a></li>
                                    <li class="social-network rss"><a title="Connect us on rss" target="_blank" href="https://instagram.com/"><i class="fa fa-rss"></i></a></li>
                                    <li class="social-network instagram"><a title="Connect us on Instagram" target="_blank" href="https://instagram.com/"><i class="fa fa-instagram"></i></a></li>
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
                    <div class="col-sm-5 col-xs-12 coppyright">Copyright © 2018 <a href="#"> Organic </a>. All Rights Reserved. </div>
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
<script src="js/jquery.min.js"></script>

<!-- bootstrap js -->
<script src="js/bootstrap.min.js"></script>

<!-- owl.carousel.min js -->
<script src="js/owl.carousel.min.js"></script>

<!-- jtv-jtv-mobile-menu js -->
<script src="js/jtv-mobile-menu.js"></script>

<!-- countdown js -->
<script src="js/countdown.js"></script>

<!-- main js -->
<script src="js/main.js"></script>

<a href="#" id="toTop" style="display: none;"><span id="toTopHover"></span></a>


<script>
    new Vue({
        el: '#app',
        data() {
        },
        methods: {
            info (nodesc) {
                this.$Notice.info({
                    title: 'Notification title',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            success (nodesc) {
                this.$Notice.success({
                    title: '添加购物车成功',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            warning (nodesc) {
                this.$Notice.warning({
                    title: 'Notification title',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            error (nodesc) {
                this.$Notice.error({
                    title: 'Notification title',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            }
        },
        events: {

        }
    })
</script>

</body></html>