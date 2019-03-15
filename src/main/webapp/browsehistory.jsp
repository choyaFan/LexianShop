<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <!-- Basic page needs -->
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->

    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Organic - Responsive HTML5 &amp; CSS3 Theme & Template</title>
    <meta name="description"
          content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store">
    <meta name="keywords"
          content="food shop, fresh, modern, organic farm, organic farm shop, organic food, organic shop, agriculture, agritourism, agrotourism, e-commerce, eco, eco products, farm, farming, food, health, organic, organic food, retail, shop, store"/>

    <!-- Mobile specific metas  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicon  -->
    <link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

    <!-- CSS Style -->
    <link rel="stylesheet" href="css/style3.css">
</head>

<body class="shopping-cart-page">
<!-- mobile menu -->
<div id="jtv-mobile-menu">
    <ul>
        <li>
            <div class="jtv-search-mob">
                <form id="search1" name="search">
                    <div class="input-group">
                        <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><i class="fa fa-search"></i></button>
                        </div>
                        <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term"
                               id="srch-term">
                    </div>
                </form>
            </div>
        </li>
        <li><a href="index.html">Home</a>
            <ul>
                <li><a href="index.html">Home Version 1</a></li>
                <li><a href="version2/index.html">Home Version 2</a></li>
            </ul>
        </li>
        <li><a href="#">Pages</a>
            <ul>
                <li><a href="shop_grid.html"><span>Shop Grid</span></a>
                    <ul>
                        <li><a href="shop_grid_right.html"> <span>Shop Grid Right Sidebar</span> </a></li>
                        <li><a href="shop_grid_fullwidth.html"> <span>Shop Grid Fullwidth</span> </a></li>
                    </ul>
                </li>
                <li><a href="shop_list.html"> <span>Shop List</span> </a>
                    <ul>
                        <li><a href="shop_list_right.html"> <span>Shop List Right Sidebar</span> </a></li>
                    </ul>
                </li>
                <li><a href="single_product.html"> <span>Single Product</span> </a></li>
                <li><a href="shopping_cart.html"> <span>Shopping Cart</span> </a></li>
                <li><a href="checkout.html"><span>Checkout</span></a></li>
                <li><a href="wishlist.html"> <span>Wishlist</span> </a></li>
                <li><a href="compare.html"><span>Compare</span></a></li>
                <li><a href="quick_view.html"><span>Quick View</span></a></li>
                <li><a href="404error.html"><span>404 Error Page</span></a></li>
            </ul>
        </li>
        <li><a href="#">Fruits</a>
            <ul>
                <li><a href="shop_grid.html"><span>Apples</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Aurore Grape</span></a></li>
                        <li><a href="shop_grid.html"><span>Super Sweet</span></a></li>
                        <li><a href="shop_grid.html"><span>Gravenstein</span></a></li>
                        <li><a href="shop_grid.html"><span>Orange Pippin</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Grapes</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Raw Honey</span></a></li>
                        <li><a href="shop_grid.html"><span>Flavored Honey</span></a></li>
                        <li><a href="shop_grid.html"><span>Propolis</span></a></li>
                        <li><a href="shop_grid.html"><span>Exotic Honey</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Citruses</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Potatoes</span></a></li>
                        <li><a href="shop_grid.html"><span>Tomatoes</span></a></li>
                        <li><a href="shop_grid.html"><span>Pickles</span></a></li>
                        <li><a href="shop_grid.html"><span>Cauliflowers</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Exotic Fruits</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Spinach</span></a></li>
                        <li><a href="shop_grid.html"><span>Pumpkin</span></a></li>
                        <li><a href="shop_grid.html"><span>Kohlrabi</span></a></li>
                        <li><a href="shop_grid.html"><span>Green Cabbage</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Summer Berries</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Avocado</span></a></li>
                        <li><a href="shop_grid.html"><span>Paprika</span></a></li>
                        <li><a href="shop_grid.html"><span>Cheese Holand</span></a></li>
                        <li><a href="shop_grid.html"><span>Cheese</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Green Cabbage</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Сauliflower</span></a></li>
                        <li><a href="shop_grid.html"><span>Tomato</span></a></li>
                        <li><a href="shop_grid.html"><span>Oranges</span></a></li>
                        <li><a href="shop_grid.html"><span>Carrots</span></a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="shop_grid.html">Vegetables</a>
            <ul>
                <li><a href="shop_grid.html"><span>Herbs and spices</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Lemon Grass</span></a></li>
                        <li><a href="shop_grid.html"><span>Rosemary</span></a></li>
                        <li><a href="shop_grid.html"><span>Chamomile</span></a></li>
                        <li><a href="shop_grid.html"><span>Oregano</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Root vegetables</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Celeriac</span></a></li>
                        <li><a href="shop_grid.html"><span>Daikon</span></a></li>
                        <li><a href="shop_grid.html"><span>Rutabaga</span></a></li>
                        <li><a href="shop_grid.html"><span>Parsnip</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Onion family</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Chives</span></a></li>
                        <li><a href="shop_grid.html"><span>Shallot</span></a></li>
                        <li><a href="shop_grid.html"><span>Onion</span></a></li>
                        <li><a href="shop_grid.html"><span>Garlic</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Legumes</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Black beans</span></a></li>
                        <li><a href="shop_grid.html"><span>Kidney beans</span></a></li>
                        <li><a href="shop_grid.html"><span>Green beans</span></a></li>
                        <li><a href="shop_grid.html"><span>Soy beans</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Haricot bean</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Nectarine</span></a></li>
                        <li><a href="shop_grid.html"><span>Charles & Keith</span></a></li>
                        <li><a href="shop_grid.html"><span>Fruits</span></a></li>
                        <li><a href="shop_grid.html"><span>Rhubarb</span></a></li>
                    </ul>
                </li>
                <li><a href="shop_grid.html"><span>Kiwi fruit</span></a>
                    <ul>
                        <li><a href="shop_grid.html"><span>Mango</span></a></li>
                        <li><a href="shop_grid.html"><span>Orange</span></a></li>
                        <li><a href="shop_grid.html"><span>Pepper</span></a></li>
                        <li><a href="shop_grid.html"><span>Quince</span></a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="shop_grid.html">Healthy Eating</a></li>
        <li><a href="shop_grid.html">Drinks</a></li>
        <li><a href="blog.html">Blog</a></li>
        <li><a href="contact-us.html">Contact us</a></li>
    </ul>
    <div class="jtv-top-link-mob">
        <ul class="links">
            <li><a title="My Account" href="account_page.html">My Account</a></li>
            <li><a title="Wishlist" href="wishlist.html">Wishlist</a></li>
            <li><a title="Checkout" href="checkout.html">Checkout</a></li>
            <li><a title="Blog" href="blog.html"><span>Blog</span></a></li>
            <li class="last"><a title="Login" href="account_page.html"><span>Login</span></a></li>
        </ul>
    </div>
</div>
<div id="page">
    <!--[if lt IE 8]>
    <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a
            href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
    <![endif]-->

    <!-- Header -->
    <header>
        <div class="header-container">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <!-- Header Language -->
                        <div class="col-xs-12 col-sm-6">
                            <div class="welcome-msg">Welcome to Organic!</div>
                            <div class="dropdown jtv-language-box"><a role="button" data-toggle="dropdown"
                                                                      data-target="#"
                                                                      class="block-language dropdown-toggle" href="#">
                                <img src="images/flag-english.jpg" alt="language"> English <span class="caret"></span>
                            </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a class="selected" href="#"> <img src="images/flag-english.jpg" alt="flag">
                                        <span>English</span> </a></li>
                                    <li><a href="#"> <img src="images/flag-default.jpg" alt="flag"> <span>French</span>
                                    </a></li>
                                    <li><a href="#"> <img src="images/flag-german.jpg" alt="flag"> <span>German</span>
                                    </a></li>
                                    <li><a href="#"> <img src="images/flag-brazil.jpg" alt="flag"> <span>Brazil</span>
                                    </a></li>
                                    <li><a href="#"> <img src="images/flag-chile.jpg" alt="flag"> <span>Chile</span>
                                    </a></li>
                                    <li><a href="#"> <img src="images/flag-spain.jpg" alt="flag"> <span>Spain</span>
                                    </a></li>
                                </ul>
                            </div>
                            <!-- End Header Language -->

                            <!-- Header Currency -->
                            <div class="dropdown jtv-currency-box"><a role="button" data-toggle="dropdown"
                                                                      data-target="#"
                                                                      class="block-currency dropdown-toggle" href="#">
                                USD <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#"> $ - Dollar </a></li>
                                    <li><a href="#"> £ - Pound </a></li>
                                    <li><a href="#"> € - Euro </a></li>
                                </ul>
                            </div>
                            <!-- End Header Currency -->

                        </div>
                        <div class="col-xs-6 hidden-xs">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>
                                        <li><a title="My Account" href="account_page.html"><span class="hidden-xs">My Account</span></a>
                                        </li>
                                        <li><a title="Wishlist" href="wishlist.html">Wishlist</a></li>
                                        <li><a title="Checkout" href="checkout.html"><span
                                                class="hidden-xs">Checkout</span></a></li>
                                        <li>
                                            <div class="dropdown block-company-wrapper hidden-xs"><a role="button"
                                                                                                     data-toggle="dropdown"
                                                                                                     data-target="#"
                                                                                                     class="block-company dropdown-toggle"
                                                                                                     href="#"> More
                                                <span class="caret"></span></a>
                                                <ul class="dropdown-menu">
                                                    <li><a href="about_us.html"> About Us </a></li>
                                                    <li><a href="#"> Customer Service </a></li>
                                                    <li><a href="#"> Privacy Policy </a></li>
                                                    <li><a href="sitemap.html">Site Map </a></li>
                                                    <li><a href="#">Search Terms </a></li>
                                                    <li><a href="#">Advanced Search </a></li>
                                                </ul>
                                            </div>
                                        </li>
                                        <li><a href="account_page.html"><span class="hidden-xs">Log In</span></a></li>
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
                                        href="shopping_cart.html"> <span class="cart_count">2</span><span class="price">My Bag / $259.00</span>
                                </a></div>
                                <div>
                                    <div class="jtv-top-cart-content">

                                        <!--block-subtitle-->
                                        <ul class="mini-products-list" id="cart-sidebar">
                                            <li class="item first">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.html"><img
                                                        alt="Product Title Here" src="images/products/img01.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item"
                                                                               href="#">Remove</a> <a class="btn-edit"
                                                                                                      title="Edit item"
                                                                                                      href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$79.99</span></div>
                                                </div>
                                            </li>
                                            <li class="item">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.html"><img
                                                        alt="Product Title Here" src="images/products/img02.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item"
                                                                               href="#">Remove</a> <a class="btn-edit"
                                                                                                      title="Edit item"
                                                                                                      href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$88.89</span></div>
                                                </div>
                                            </li>
                                            <li class="item last">
                                                <div class="item-inner"><a class="product-image"
                                                                           title="Product Title Here"
                                                                           href="single_product.html"><img
                                                        alt="Product Title Here" src="images/products/img04.jpg"> </a>
                                                    <div class="product-details">
                                                        <div class="access"><a class="jtv-btn-remove"
                                                                               title="Remove This Item"
                                                                               href="#">Remove</a> <a class="btn-edit"
                                                                                                      title="Edit item"
                                                                                                      href="#"><i
                                                                class="icon-pencil"></i><span
                                                                class="hidden">Edit item</span></a></div>
                                                        <p class="product-name"><a href="#">Product Title Here</a></p>
                                                        <strong>1</strong> x <span class="price">$85.99</span></div>
                                                </div>
                                            </li>
                                        </ul>

                                        <!--actions-->
                                        <div class="actions">
                                            <button class="btn-checkout" title="Checkout" type="button"
                                                    onClick="checkout.html"><span>Checkout</span></button>
                                            <a href="shopping_cart.html" class="view-cart"><span>View Cart</span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"><h1><a title="eCommerce" href="index.html"><img alt="eCommerce"
                                                                                          src="images/logo.png"> </a>
                        </h1></div>
                        <!-- End Header Logo -->
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">
                        <div class="search-box">
                            <form action="cat" method="POST" id="search_mini_form" name="Categories">
                                <input type="text" placeholder="Search here..." value="" maxlength="70" name="search"
                                       id="search">
                                <button type="button" class="search-btn-bg"><span
                                        class="glyphicon glyphicon-search"></span>&nbsp;
                                </button>
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
                <div class="mm-toggle"><i class="fa fa-align-justify"></i><span class="mm-label">Menu</span></div>
            </div>
            <div class="nav-inner">
                <!-- BEGIN NAV -->
                <ul id="nav" class="hidden-xs">
                    <li class="drop-menu"><a href="index.html" class="level-top active"><span>Home</span></a>
                        <ul>
                            <li><a href="index.html">Home Version 1</a></li>
                            <li><a href="version2/index.html">Home Version 2</a></li>
                        </ul>
                    </li>
                    <li class="drop-menu"><a href="#"> <span>Pages</span> </a>
                        <ul>
                            <li class="sub-cat"><a href="shop_grid.html"><span>Shop Grid</span></a>
                                <ul>
                                    <li><a href="shop_grid_right.html"> <span>Shop Grid Right Sidebar</span> </a></li>
                                    <li><a href="shop_grid_fullwidth.html"> <span>Shop Grid Fullwidth</span> </a></li>
                                </ul>
                            </li>
                            <li class="sub-cat"><a href="shop_list.html"> <span>Shop List</span> </a>
                                <ul>
                                    <li><a href="shop_list_right.html"> <span>Shop List Right Sidebar</span> </a></li>
                                </ul>
                            </li>
                            <li><a href="single_product.html"> <span>Single Product</span> </a></li>
                            <li><a href="shopping_cart.html"> <span>Shopping Cart</span> </a></li>
                            <li><a href="checkout.html"><span>Checkout</span></a></li>
                            <li><a href="wishlist.html"> <span>Wishlist</span> </a></li>
                            <li><a href="compare.html"><span>Compare</span></a></li>
                            <li><a href="quick_view.html"><span>Quick View</span></a></li>
                            <li><a href="404error.html"><span>404 Error Page</span></a></li>
                        </ul>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.html"><span>Fruits</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <div class="col-1">
                                        <ul class="level0">
                                            <li class="parent item"><a href="shop_grid.html"><span>Apples</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Aurore Grape</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Super Sweet</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Gravenstein</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Orange Pippin</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.html"><span>Grapes</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Raw Honey</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Flavored Honey</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Propolis</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Exotic Honey</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.html"><span>Citruses</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Potatoes</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Tomatoes</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Pickles</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Cauliflowers</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.html"><span>Exotic Fruits</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Spinach</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Pumpkin</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Kohlrabi</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Green Cabbage</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.html"><span>Summer Berries</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Avocado</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Paprika</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Cheese Holand</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Cheese</span></a></li>
                                                </ul>
                                            </li>
                                            <li class="parent item"><a href="shop_grid.html"><span>Green Cabbage</span></a>
                                                <ul class="level1">
                                                    <li><a href="shop_grid.html"><span>Сauliflower</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Tomato</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Oranges</span></a></li>
                                                    <li><a href="shop_grid.html"><span>Carrots</span></a></li>
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
                    <li class="mega-menu"><a class="level-top" href="shop_grid.html"><span>Vegetables</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"><a
                                                href="shop_grid.html"><span>Herbs and spices</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Lemon Grass</span></a></li>
                                                <li><a href="shop_grid.html"><span>Rosemary</span></a></li>
                                                <li><a href="shop_grid.html"><span>Chamomile</span></a></li>
                                                <li><a href="shop_grid.html"><span>Oregano</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a
                                                href="shop_grid.html"><span>Root vegetables</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Celeriac</span></a></li>
                                                <li><a href="shop_grid.html"><span>Daikon</span></a></li>
                                                <li><a href="shop_grid.html"><span>Rutabaga</span></a></li>
                                                <li><a href="shop_grid.html"><span>Parsnip</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Onion family</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Chives</span></a></li>
                                                <li><a href="shop_grid.html"><span>Shallot</span></a></li>
                                                <li><a href="shop_grid.html"><span>Onion</span></a></li>
                                                <li><a href="shop_grid.html"><span>Garlic</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Legumes</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Black beans</span></a></li>
                                                <li><a href="shop_grid.html"><span>Kidney beans</span></a></li>
                                                <li><a href="shop_grid.html"><span>Green beans</span></a></li>
                                                <li><a href="shop_grid.html"><span>Soy beans</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Haricot bean</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Nectarine</span></a></li>
                                                <li><a href="shop_grid.html"><span>Charles & Keith</span></a></li>
                                                <li><a href="shop_grid.html"><span>Fruits</span></a></li>
                                                <li><a href="shop_grid.html"><span>Rhubarb</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Kiwi fruit</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Mango</span></a></li>
                                                <li><a href="shop_grid.html"><span>Orange</span></a></li>
                                                <li><a href="shop_grid.html"><span>Pepper</span></a></li>
                                                <li><a href="shop_grid.html"><span>Quince</span></a></li>
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
                    <li class="mega-menu"><a class="level-top" href="shop_grid.html"><span>Healthy Eating</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center">
                                    <ul class="level0">
                                        <li class="parent item"><a href="shop_grid.html"><span>Vegetables</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Tomatoes</span></a></li>
                                                <li><a href="shop_grid.html"><span>Potatoes</span></a></li>
                                                <li><a href="shop_grid.html"><span>Carrots</span></a></li>
                                                <li><a href="shop_grid.html"><span>Cauliflowers</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Fruit</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Mango</span></a></li>
                                                <li><a href="shop_grid.html"><span>Orange</span></a></li>
                                                <li><a href="shop_grid.html"><span>Pepper</span></a></li>
                                                <li><a href="shop_grid.html"><span>Quince</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Whole Grains</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Cereals</span></a></li>
                                                <li><a href="shop_grid.html"><span>Noodles</span></a></li>
                                                <li><a href="shop_grid.html"><span>Rice</span></a></li>
                                                <li><a href="shop_grid.html"><span>Pasta</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Protein</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Nutrition</span></a></li>
                                                <li><a href="shop_grid.html"><span>Biosynthesis</span></a></li>
                                                <li><a href="shop_grid.html"><span>Enzymes</span></a></li>
                                                <li><a href="shop_grid.html"><span>Chronic Diseases</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Low-Fat Dairy</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Skim milk</span></a></li>
                                                <li><a href="shop_grid.html"><span>Fat-free cheese</span></a></li>
                                                <li><a href="shop_grid.html"><span>Strawberries</span></a></li>
                                                <li><a href="shop_grid.html"><span>Salad with olives</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Healthy Snack Food</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Pumpkin Seeds</span></a></li>
                                                <li><a href="shop_grid.html"><span>String Cheese</span></a></li>
                                                <li><a href="shop_grid.html"><span>Celery</span></a></li>
                                                <li><a href="shop_grid.html"><span>Cottage Cheese</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="shop_grid.html"><span>Drinks</span></a>
                        <div class="jtv-menu-block-wrapper">
                            <div class="jtv-menu-block-wrapper2">
                                <div class="nav-block jtv-nav-block-center jtv-menu-box-left">
                                    <ul class="level0">
                                        <li class="parent item"><a href="shop_grid.html"><span>Cold drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Fayrouz</span></a></li>
                                                <li><a href="shop_grid.html"><span>Mirinda</span></a></li>
                                                <li><a href="shop_grid.html"><span>AMP Energy</span></a></li>
                                                <li><a href="shop_grid.html"><span>Mountain Dew</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Hot drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Apple cider</span></a></li>
                                                <li><a href="shop_grid.html"><span>Butter tea</span></a></li>
                                                <li><a href="shop_grid.html"><span>Irish coffee</span></a></li>
                                                <li><a href="shop_grid.html"><span>Mate cocido</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Fruit drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Strawberry Lemonade</span></a></li>
                                                <li><a href="shop_grid.html"><span>Apple Cider</span></a></li>
                                                <li><a href="shop_grid.html"><span>Watermelontinis</span></a></li>
                                                <li><a href="shop_grid.html"><span>Sparkling Sangria</span></a></li>
                                            </ul>
                                        </li>
                                        <li class="parent item"><a href="shop_grid.html"><span>Mixed drinks</span></a>
                                            <ul class="level1">
                                                <li><a href="shop_grid.html"><span>Like Hand Grenade</span></a></li>
                                                <li><a href="shop_grid.html"><span>Miami Vice</span></a></li>
                                                <li><a href="shop_grid.html"><span>Blue Lagoon</span></a></li>
                                                <li><a href="shop_grid.html"><span>Jungle Juice</span></a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                                <div class="nav-block nav-block-right std jtv-menu-box-right"><img
                                        src="images/menu-img5.jpg" alt="menu img"></div>
                            </div>
                        </div>
                    </li>
                    <li class="mega-menu"><a class="level-top" href="blog.html"><span>Blog</span></a></li>
                    <li class="nav-custom-link mega-menu"><a href="#" class="level-top"> <span>Features</span> </a>
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
                                    <h6 class="heading">2 Layout Home Pages</h6>
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

    <section class="main-container col1-layout">
        <div class="main container">
            <div class="col-main">
                <div class="shopping-cart-inner">
                    <div class="page-content">
                        <div class="order-detail-content">
                            <table class="table table-bordered table-responsive jtv-cart-summary">
                                <thead>
                                <tr>
                                    <th>产品id</th>
                                    <th>门店id</th>
                                    <th>浏览时间</th>
                                    <%--<th class="action"><i class="fa fa-trash-o"></i></th>--%>
                                </tr>
                                </thead>
                                <tbody>
                                <%--*********************************************************************************************************************************--%>
                                <form action="${pageContext.request.contextPath }browsehistory.action" method="post">
                                      <c:forEach items="${browseData}" var="browseData" varStatus="loop"><tr>
                                          <td>${productNameArrayList[loop.count-1]}</td>
                                          <td>${storeNameArrayList[loop.count-1]}</td>
                                        <td>${browseData.browseTime}</td>
                                      </tr></c:forEach>
                                        <%--***********************************************************************************************************************************--%>
                                </tbody>
                            </table>
                            <div class="cart_navigation">
                              <button class="button btn-proceed-checkout" type="button" onclick="window.location.href='http://localhost:8081/ShowPersonalInformation.action'"><span>返回</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Brand Logo -->
    <div class="brand-logo">
        <div class="container">
            <div class="slider-items-products">
                <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col6">

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand3.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand1.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand2.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand4.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand5.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand6.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand2.png" alt="Image"> </a></div>
                        <!-- End Item -->

                        <!-- Item -->
                        <div class="item"><a href="#"><img src="images/brand4.png" alt="Image"> </a></div>
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
                    <div style="text-align:center"><a href="index.html"><img src="images/footer-logo.png" alt="logo">
                    </a></div>
                    <address>
                        <p><i class="fa fa-map-marker"></i>Company, 12/34 - West 21st Street, New York, USA </p>
                        <p><i class="fa fa-mobile"></i><span>+ (800) 0123 456 789</span></p>
                        <p><i class="fa fa-envelope"></i><span><a href="mailto:email@domain.com">support@themes.com</a></span>
                        </p>
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
                                        <p>Subscribe to be the first to know about Sales, Events, and Exclusive
                                            Offers!</p>
                                        <input class="newsletter-email" name='Email' placeholder='Enter Your Email'/>
                                        <button class="button subscribe" type="submit" title="Subscribe">Subscribe
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="social">
                                <h5>Follow Us</h5>
                                <ul class="inline-mode">
                                    <li class="social-network fb"><a title="Connect us on Facebook" href="#"><i
                                            class="fa fa-facebook"></i></a></li>
                                    <li class="social-network googleplus"><a title="Connect us on Google+" href="#"><i
                                            class="fa fa-google-plus"></i></a></li>
                                    <li class="social-network tw"><a title="Connect us on Twitter" href="#"><i
                                            class="icon-social-twitter icons"></i></a></li>
                                    <li class="social-network linkedin"><a title="Connect us on Linkedin" href="#"><i
                                            class="fa fa-linkedin"></i></a></li>
                                    <li class="social-network rss"><a title="Connect us on rss" href="#"><i
                                            class="fa fa-rss"></i></a></li>
                                    <li class="social-network instagram"><a title="Connect us on Instagram" href="#"><i
                                            class="fa fa-instagram"></i></a></li>
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
                    <div class="col-sm-5 col-xs-12 coppyright">Copyright © 2018 <a href="#"> Organic </a>. All Rights
                        Reserved.
                    </div>
                    <div class="col-sm-7 col-xs-12 payment-accept">
                        <ul>
                            <li><a href="#"><img src="images/payment-1.png" alt="Payment Card"></a></li>
                            <li><a href="#"><img src="images/payment-2.png" alt="Payment Card"></a></li>
                            <li><a href="#"><img src="images/payment-3.png" alt="Payment Card"></a></li>
                            <li><a href="#"><img src="images/payment-4.png" alt="Payment Card"></a></li>
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
</body>
</html>