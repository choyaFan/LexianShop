<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
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
    <%--<header>--%>
        <%--<div class="header-container">--%>
            <%--<div class="header-top">--%>
                <%--<div class="container">--%>
                    <%--<div class="row">--%>
                        <%--<!-- Header Language -->--%>
                        <%--<div class="col-xs-12 col-sm-9">--%>
                            <%--<div class="welcome-msg col-sm-3">欢迎来到派氏乐鲜生活馆</div>--%>
                            <%--<div class="col-sm-8">--%>
                                <%--<select id="province">--%>
                                    <%--<option value="" hidden>--%>
                                        <%--<c:choose>--%>
                                            <%--<c:when test="${empty province}">--%>
                                                <%--请选择省份--%>
                                            <%--</c:when>--%>
                                            <%--<c:otherwise>--%>
                                                <%--${province}--%>
                                            <%--</c:otherwise>--%>
                                        <%--</c:choose>--%>
                                    <%--</option>--%>
                                <%--</select>--%>
                                <%--<select id="city">--%>
                                    <%--<option value="" hidden>--%>
                                        <%--<c:choose>--%>
                                            <%--<c:when test="${empty city}">--%>
                                                <%--请选择城市--%>
                                            <%--</c:when>--%>
                                            <%--<c:otherwise>--%>
                                                <%--${city}--%>
                                            <%--</c:otherwise>--%>
                                        <%--</c:choose>--%>
                                    <%--</option>--%>
                                <%--</select>--%>
                                <%--<select id="district">--%>
                                    <%--<option value="" hidden>--%>
                                        <%--<c:choose>--%>
                                            <%--<c:when test="${empty district}">--%>
                                                <%--请选择区县--%>
                                            <%--</c:when>--%>
                                            <%--<c:otherwise>--%>
                                                <%--${district}--%>
                                            <%--</c:otherwise>--%>
                                        <%--</c:choose>--%>
                                    <%--</option>--%>
                                <%--</select>--%>
                                <%--<select id="stores" id="sto">--%>
                                    <%--<c:choose>--%>
                                        <%--<c:when test="${!empty storeName}">--%>
                                            <%--<option value="" hidden>${storeName}</option>--%>
                                            <%--<c:if test="${!empty branchStoreList}">--%>
                                                <%--<c:forEach items="${branchStoreList}" varStatus="storesStatues"--%>
                                                           <%--var="storelist">--%>
                                                    <%--<c:if test="${storelist.storeStatus eq 1}">--%>
                                                        <%--<option value=${storesStatues.index}>${storelist.storeName}</option>--%>
                                                    <%--</c:if>--%>
                                                <%--</c:forEach>--%>
                                            <%--</c:if>--%>
                                        <%--</c:when>--%>
                                        <%--<c:otherwise>--%>
                                            <%--<option value="" hidden>请选择门店</option>--%>
                                            <%--<c:forEach items="${branchStoreList}" varStatus="storesStatues"--%>
                                                       <%--var="storelist">--%>
                                                <%--<c:if test="${storelist.storeStatus eq 1}">--%>
                                                    <%--<option value=${storesStatues.index}>${storelist.storeName}</option>--%>
                                                <%--</c:if>--%>
                                            <%--</c:forEach>--%>

                                        <%--</c:otherwise>--%>
                                    <%--</c:choose>--%>

                                <%--</select>--%>
                            <%--</div>--%>
                            <%--<script type="text/javascript" src="js/data.js"></script>--%>
                            <%--<script type="text/javascript">--%>
                                <%--var province = $("#province");--%>
                                <%--var city = $("#city");--%>
                                <%--var district = $("#district");--%>
                                <%--var store = $("#stores");--%>
                                <%--//初始化省份下拉选择框选项--%>
                                <%--$(function () {--%>
                                    <%--//遍历对象,data为data.js中的对象--%>
                                    <%--data.forEach(function (value, index) {--%>
                                        <%--var provinceName = value.name;//省份名--%>
                                        <%--province.append("<option value='" + index + "'>" + provinceName + "</option>");--%>
                                    <%--});--%>
                                <%--});--%>
                                <%--//省份下拉框切换事件,加载城市下拉框值--%>
                                <%--province.change(function () {--%>
                                    <%--//先清除城市区县两个下拉框的选项--%>
                                    <%--$("#city option:not(:first)").remove();--%>
                                    <%--$("#district option:not(:first)").remove();--%>
                                    <%--var cityList = data[province.val()].city;--%>
                                    <%--cityList.forEach(function (value, index) {--%>
                                        <%--var cityName = value.name;//城市名--%>
                                        <%--city.append("<option value='" + index + "'>" + cityName + "</option>");--%>
                                    <%--});--%>
                                <%--});--%>
                                <%--//城市下拉框切换事件,加载区县下拉框值--%>
                                <%--city.change(function () {--%>
                                    <%--$("#district option:not(:first)").remove();--%>
                                    <%--var cityList = data[province.val()].city;--%>
                                    <%--var districtList = cityList[city.val()].area;--%>
                                    <%--districtList.forEach(function (value, index) {--%>
                                        <%--district.append("<option value='" + index + "'>" + value + "</option>");--%>
                                    <%--});--%>
                                <%--});--%>

                                <%--district.change(function () {--%>
                                    <%--var provinceVal = province.val();--%>
                                    <%--var cityVal = city.val();--%>
                                    <%--var districtVal = district.val();--%>
                                    <%--//获取省市区选中的值的文本--%>
                                    <%--var pName = $("#province option:selected").text();--%>
                                    <%--var cName = $("#city option:selected").text();--%>
                                    <%--var dName = $("#district option:selected").text();--%>

                                    <%--//window.location.href = "select_stores" + "?province=" + pName + "&city=" + cName + "&district=" + dName;--%>
                                <%--});--%>

                                <%--store.change(function () {--%>
                                    <%--var sName = $("#stores option:selected").text();--%>

                                    <%--window.location.href = "stores_changed" + "?store=" + sName;--%>
                                <%--});--%>
                            <%--</script>--%>
                            <%--<!-- End Header Language -->--%>

                            <%--<!-- Header Currency -->--%>

                            <%--<!-- End Header Currency -->--%>

                        <%--</div>--%>
                        <%--<div class="col-sm-3">--%>
                            <%--<!-- Header Top Links -->--%>
                            <%--<div class="jtv-top-links">--%>
                                <%--<div class="links">--%>
                                    <%--<ul>--%>

                                        <%--<li> <a title="Favorites" href="/getUserOrder">订单</a> </li>--%>
                                        <%--<li> <a title="Favorites" href="look_wish_list">收藏夹</a> </li>--%>

                                        <%--<li>--%>
                                            <%--<div class="dropdown block-company-wrapper hidden-xs"> <a role="button" data-toggle="dropdown" data-target="#" class="block-company dropdown-toggle" href="#">其他功能<span class="caret"></span></a>--%>
                                                <%--<ul class="dropdown-menu">--%>
                                                    <%--<li><a href="about_us.html"> About Us </a> </li>--%>
                                                    <%--<li><a href="#"> Customer Service </a> </li>--%>
                                                    <%--<li><a href="#"> Privacy Policy </a> </li>--%>
                                                    <%--<li><a href="#">Site Map </a> </li>--%>
                                                    <%--<li><a href="#">Search Terms </a> </li>--%>
                                                    <%--<li><a href="#">Advanced Search </a> </li>--%>
                                                <%--</ul>--%>
                                            <%--</div>--%>
                                        <%--</li>--%>
                                        <%--<c:choose>--%>
                                            <%--<c:when test="${not empty sessionScope.userName}">--%>
                                                <%--<li> <a href="ShowPersonalInformation.action"><span class="hidden-xs">${sessionScope.userName}</span></a> </li>--%>
                                            <%--</c:when>--%>
                                            <%--<c:otherwise>--%>
                                                <%--<li> <a href="sign_in.jsp"><span class="hidden-xs">登录</span></a> </li>--%>
                                            <%--</c:otherwise>--%>
                                        <%--</c:choose>--%>
                                    <%--</ul>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                            <%--<!-- End Header Top Links -->--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
            <%--<div class="container">--%>
                <%--<div class="row">--%>
                    <%--<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">--%>
                        <%--<div class="jtv-top-cart-box">--%>
                            <%--<!-- Top Cart -->--%>
                            <%--<div class="mini-cart">--%>
                                <%--<div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">${shoppingCartsList.size()}</span><span class="price">购物车 /--%>
                                    <%--&lt;%&ndash;<fmt:formatNumber value="${totalPrice}" type="currency" pattern="¥.00"/>&ndash;%&gt;--%>
                                <%--</span> </a> </div>--%>
                                <%--<div>--%>
                                    <%--<div class="jtv-top-cart-content">--%>

                                        <%--<!--block-subtitle-->--%>
                                        <%--<ul class="mini-products-list" id="cart-sidebar">--%>
                                            <%--<c:forEach items="${shoppingCartsList}" var="cartData" varStatus="loop">--%>
                                                <%--<li class="item">--%>
                                                    <%--<div class="item-inner"> <a class="product-image" title="${productNameArrayList[loop.count-1]}" href="single_pro?productId=${cartData.productId}"><img alt="${productNameArrayList[loop.count-1]}" src="${pictureUrlArrayList[loop.count-1]}"> </a>--%>
                                                        <%--<div class="product-details">--%>
                                                            <%--<p class="product-name"><a href="single_pro?productId=${cartData.productId}">${productNameArrayList[loop.count-1]}</a> </p>--%>
                                                            <%--<strong>${cartData.amount}</strong> x <span class="price">--%>
                                                            <%--<fmt:formatNumber value="${productPriceArray[loop.count-1]}" type="currency" pattern="¥.00"/>--%>
                                                        <%--</span> </div>--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                            <%--</c:forEach>--%>


                                        <%--</ul>--%>

                                        <%--<!--actions-->--%>
                                        <%--<div class="actions">--%>
                                            <%--<button class="btn-checkout" title="Checkout" type="button" href="checkOut.action"><span>下单</span> </button>--%>
                                            <%--<a href="/shoppingCart.action" class="view-cart"><span>进入购物车</span></a> </div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                            <%--</div>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                    <%--<div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">--%>
                        <%--<!-- Header Logo -->--%>
                        <%--<div class="logo"> <h1><a title="eCommerce" href="index.jsp"><img alt="eCommerce" src="images/name2.png"> </a></h1> </div>--%>
                        <%--<!-- End Header Logo -->--%>
                    <%--</div>--%>
                    <%--<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12 hidden-xs">--%>
                        <%--<div class="search-box">--%>
                            <%--<input type="text" placeholder="搜索商品..." value="" maxlength="70" name="search" id="search"--%>
                                   <%--onkeypress="EnterButtonPress()" onkeydown="EnterButtonPress()">--%>
                            <%--<!--<button type="button" class="search-btn-bg"><span class="glyphicon glyphicon-search"></span>&nbsp;</button>-->--%>
                            <%--<button id="searchbutton" type="button" class="search-btn-bg"--%>
                                    <%--onclick="location.href = 'search_products?'+'&searchKey='+document.getElementById('search').value">--%>
                                <%--<span class="glyphicon glyphicon-search"></span>&nbsp;--%>
                            <%--</button>--%>
                        <%--</div>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</div>--%>
    <%--</header>--%>
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
                    <li class="drop-menu"><a href="getSector" class="level-top active"><span>主页</span></a></li>
                    <c:forEach items="${categoryjson}" var="category1">
                        <li class="mega-menu"><a class="level-top"><span>${category1.key}</span></a>
                            <div class="jtv-menu-block-wrapper">
                                <div class="jtv-menu-block-wrapper2">
                                    <div class="nav-block jtv-nav-block-center">
                                        <ul class="level0">
                                            <c:forEach items="${category1.value}" var="tmp1">
                                                <c:forEach items="${tmp1}" var="category2">
                                                    <li class="parent item"><span><a>${category2.key}</a></span>
                                                        <ul class="level1">
                                                            <c:forEach items="${category2.value}" var="category3">
                                                                <li><a href="add_condition?condition=${category3.value}"><span>${category3.value}</span></a></li>
                                                            </c:forEach>

                                                        </ul>
                                                    </li>
                                                </c:forEach>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>


                </ul>
            </div>
        </div>
    </nav>
    <!-- end nav -->

    <section class="main-container col1-layout">
        <div class="main container">
            <div class="col-main">
                <div class="shopping-cart-inner">
                    <div class="page-title">
                        <h2>Shopping Cart Summary</h2>
                    </div>
                    <div class="page-content">
                        <ul class="step">
                            <li class="current-step"><span>01. Summary</span></li>
                            <li><span>02. Sign in</span></li>
                            <li><span>03. Address</span></li>
                            <li><span>04. Shipping</span></li>
                            <li><span>05. Payment</span></li>
                        </ul>
                        <div class="heading-counter warning">Your shopping cart contains: <span>2 Product</span></div>
                        <div class="order-detail-content">
                            <table class="table table-bordered table-responsive jtv-cart-summary">
                                <thead>
                                <tr>
                                    <th>产品图片</th>
                                    <th>产品名称</th>
                                    <th>店铺名称</th>
                                    <th>购买数量</th>
                                    <th>产品单价</th>
                                    <th>产品总价</th>
                                    <th class="action"><i class="fa fa-trash-o"></i></th>
                                </tr>
                                </thead>
                                <tbody>

                                <%--*********************************************************************************************************************************--%>
                                <form action="${pageContext.request.contextPath }shoppingCart.action" method="post">
                                    <%--<tr>--%>
                                    <c:forEach items="${cartData}" var="cartData" varStatus="loop">
                                    <tr>
                                        <td class="cart_product"><a href="#"><img
                                                src=${pictureUrlArrayList[loop.count-1]} alt="Product"></a></td>
                                        <td>${productNameArrayList[loop.count-1]}</td>
                                        <td>${storeNameArrayList[loop.count-1]}</td>
                                        <td><input class="form-control input-sm" type="text" value=${cartData.amount}>
                                            <a href="${pageContext.request.contextPath }/shoppingCartAdd.action?condition=${cartData.productId}"><i
                                                    class="fa fa-plus"></i></a>
                                            <a href="${pageContext.request.contextPath }/shoppingCartSubtract.action?condition=${cartData.productId}"><i
                                                    class="fa fa-minus"></i></a></td>
                                        <td>${cartData.singlePrice}</td>
                                        <td>${cartData.totalPrice}</td>
                                        <td>
                                            <a href="${pageContext.request.contextPath }/shoppingCartDelete.action?condition=${cartData.productId}">删除</a>
                                        </td>
                                    </tr>
                                    </c:forEach>

                                    <%--<tr>--%>
                                    <%--<td colspan="5"><strong></strong></td>--%>
                                    <%--<td colspan="2"><strong>总金额为：$${userTransfer.totalPrice}</strong></td>--%>
                                    <%--</tr>--%>

                                    <%--<tr>--%>
                                    <%--<td colspan="7"><input type="submit" value="查询"/></td>--%>
                                    <%--</tr>--%>
                                    <form>
                                        <%--***********************************************************************************************************************************--%>
                                </tbody>
                            </table>
                            <div class="cart_navigation">
                                <button class="button continue-shopping" type="button"
                                        onclick="window.location.href='index.jsp'"><span>继续购买</span>
                                </button>
                                <button class="button btn-proceed-checkout" type="button"
                                        onclick="window.location.href='checkOut.action'"><span>全部下单</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="crosssel">
                    <div class="jtv-title">
                        <h2>you may be interested</h2>
                    </div>
                    <div class="category-products">
                        <ul class="products-grid">
                            <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="single_product.html"> <img
                                                alt="Product Title Here" src="images/products/img10.jpg"> </a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="quick_view.html"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist" href="wishlist.html"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="compare.html"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6><a title="Product Title Here"
                                                                           href="single_product.html"> Product Title
                                                Here </a></h6></div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box"><span class="regular-price"> <span
                                                            class="price">$155.00</span> </span></div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart"><span>Add to Cart</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="single_product.html"> <img
                                                alt="Product Title Here" src="images/products/img01.jpg"> </a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="quick_view.html"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist" href="wishlist.html"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="compare.html"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6><a title="Product Title Here"
                                                                           href="single_product.html"> Product Title
                                                Here </a></h6></div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box"><span class="regular-price"> <span
                                                            class="price">$225.00</span> </span></div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart"><span>Add to Cart</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="single_product.html"> <img
                                                alt="Product Title Here" src="images/products/img02.jpg"> </a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="quick_view.html"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist" href="wishlist.html"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="compare.html"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6><a title="Product Title Here"
                                                                           href="single_product.html"> Product Title
                                                Here </a></h6></div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box"><span class="regular-price"> <span
                                                            class="price">$99.00</span> </span></div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart"><span>Add to Cart</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"><a class="product-image" title="Product Title Here"
                                                                      href="single_product.html"> <img
                                                alt="Product Title Here" src="images/products/img03.jpg"> </a>
                                            <div class="new-label new-top-left">new</div>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="quick_view.html"><i
                                                            class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a>
                                                    </li>
                                                    <li><a class="link-wishlist" href="wishlist.html"><i
                                                            class="icon-heart icons"></i><span
                                                            class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="compare.html"><i
                                                            class="icon-shuffle icons"></i><span
                                                            class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6><a title="Product Title Here"
                                                                           href="single_product.html"> Product Title
                                                Here </a></h6></div>
                                            <div class="item-content">
                                                <div class="rating"><i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i
                                                        class="fa fa-star-o"></i> <i class="fa fa-star-o"></i></div>
                                                <div class="item-price">
                                                    <div class="price-box">
                                                        <p class="special-price"><span
                                                                class="price-label">Special Price</span> <span
                                                                class="price"> $156.00 </span></p>
                                                        <p class="old-price"><span
                                                                class="price-label">Regular Price:</span> <span
                                                                class="price"> $167.00 </span></p>
                                                    </div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title=""
                                                            data-original-title="Add to Cart"><span>Add to Cart</span>
                                                    </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
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