<%@ page import="org.springframework.beans.factory.annotation.Autowired" %>
<%@ page import="com.CAKESHOP.service.SectorService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- Basic page needs -->
    <meta charset="utf-8">
    <!--[if IE]>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <![endif]-->
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home</title>
    <meta name="description" content="">
    <meta name="keywords" content="">

    <!-- Mobile specific metas  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSS Style -->
    <link rel="stylesheet" href="css/style3.css">

    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <!-- import Vue.js -->
    <script src="js/vue.min.js"></script>
    <!-- import stylesheet -->
    <link rel="stylesheet" href="css/iview.css">
    <!-- import iView -->
    <script src="js/iview.min.js"></script>
</head>

<body class="cms-index-index cms-home-page">
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
                        <div class="col-xs-12 col-sm-6">
                            <div class="welcome-msg">欢迎来到派氏乐鲜生活馆</div>
                            <div class="col-sm-8">
                                <select id="province">
                                    <option value="" hidden>
                                        <c:choose>
                                            <c:when test="${empty province}">
                                                请选择省份
                                            </c:when>
                                            <c:otherwise>
                                                ${province}
                                            </c:otherwise>
                                        </c:choose>
                                    </option>
                                </select>
                                <select id="city">
                                    <option value="" hidden>
                                        <c:choose>
                                            <c:when test="${empty city}">
                                                请选择城市
                                            </c:when>
                                            <c:otherwise>
                                                ${city}
                                            </c:otherwise>
                                        </c:choose>
                                    </option>
                                </select>
                                <select id="district">
                                    <option value="" hidden>
                                        <c:choose>
                                            <c:when test="${empty district}">
                                                请选择区县
                                            </c:when>
                                            <c:otherwise>
                                                ${district}
                                            </c:otherwise>
                                        </c:choose>
                                    </option>
                                </select>
                                <select id="stores">
                                    <c:choose>
                                        <c:when test="${!empty storeName}">
                                            <option value="" hidden>${storeName}</option>
                                            <c:if test="${!empty branchStoreList}">
                                                <c:forEach items="${branchStoreList}" varStatus="storesStatues"
                                                           var="storelist">
                                                    <c:if test="${storelist.storeStatus eq 1}">
                                                        <option value=${storesStatues.index}>${storelist.storeName}</option>
                                                    </c:if>
                                                </c:forEach>
                                            </c:if>
                                        </c:when>
                                        <c:otherwise>
                                            <option value="" hidden>请选择门店</option>
                                            <c:forEach items="${branchStoreList}" varStatus="storesStatues"
                                                       var="storelist">
                                                <c:if test="${storelist.storeStatus eq 1}">
                                                    <option value=${storesStatues.index}>${storelist.storeName}</option>
                                                </c:if>
                                            </c:forEach>

                                        </c:otherwise>
                                    </c:choose>

                                </select>
                            </div>
                            <script type="text/javascript" src="js/data.js"></script>
                            <script type="text/javascript">
                                var province = $("#province");
                                var city = $("#city");
                                var district = $("#district");
                                var store = $("#stores");
                                //初始化省份下拉选择框选项
                                $(function () {
                                    //遍历对象,data为data.js中的对象
                                    data.forEach(function (value, index) {
                                        var provinceName = value.name;//省份名
                                        province.append("<option value='" + index + "'>" + provinceName + "</option>");
                                    });
                                });
                                //省份下拉框切换事件,加载城市下拉框值
                                province.change(function () {
                                    //先清除城市区县两个下拉框的选项
                                    $("#city option:not(:first)").remove();
                                    $("#district option:not(:first)").remove();
                                    var cityList = data[province.val()].city;
                                    cityList.forEach(function (value, index) {
                                        var cityName = value.name;//城市名
                                        city.append("<option value='" + index + "'>" + cityName + "</option>");
                                    });
                                });
                                //城市下拉框切换事件,加载区县下拉框值
                                city.change(function () {
                                    $("#district option:not(:first)").remove();
                                    var cityList = data[province.val()].city;
                                    var districtList = cityList[city.val()].area;
                                    districtList.forEach(function (value, index) {
                                        district.append("<option value='" + index + "'>" + value + "</option>");
                                    });
                                });

                                district.change(function () {
                                    var provinceVal = province.val();
                                    var cityVal = city.val();
                                    var districtVal = district.val();
                                    //获取省市区选中的值的文本
                                    var pName = $("#province option:selected").text();
                                    var cName = $("#city option:selected").text();
                                    var dName = $("#district option:selected").text();

                                    window.location.href = "select_stores" + "?province=" + pName + "&city=" + cName + "&district=" + dName;
                                });

                                store.change(function () {
                                    var sName = $("#stores option:selected").text();

                                    window.location.href = "stores_changed" + "?store=" + sName;
                                });
                            </script>
                            <!-- Header Currency -->

                            <!-- End Header Currency -->

                        </div>
                        <div class="col-xs-6 hidden-xs">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>

                                        <li> <a title="Favorites" href="/getUserOrder">订单</a> </li>
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
                                        <c:choose>
                                            <c:when test="${not empty sessionScope.userName}">
                                                <li> <a href="ShowPersonalInformation.action"><span class="hidden-xs">${sessionScope.userName}</span></a> </li>
                                            </c:when>
                                            <c:otherwise>
                                                <li> <a href="sign_in.jsp"><span class="hidden-xs">登录</span></a> </li>
                                            </c:otherwise>
                                        </c:choose>
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
                                            <button class="btn-checkout" title="Checkout" type="button" onclick="#"><span>Checkout</span> </button>
                                            <a href="/getOrderProducts?orderId=1" class="view-cart"><span>View Cart</span></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"> <h1><a title="eCommerce" href="index.jsp"><img alt="eCommerce" src="images/name2.png"> </a></h1> </div>
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

    <nav>
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
                            <h6>承诺第二天送达</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box"> <i class="icon-earphones-alt icons"></i>
                        <div class="content">
                            <h6>7*24小时客服</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box"> <i class="icon-like icons"></i>
                        <div class="content">
                            <h6>100%好评</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-xs-12 col-sm-6">
                    <div class="feature-box last"> <i class="icon-tag icons"></i>
                        <div class="content">
                            <h6>每日折扣</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- JTV Home Slider -->
    <div class="jtv-slideshow">
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12">
                    <div id='jtv-rev_slider_wrapper' class='rev_slider_wrapper fullwidthbanner-container'>
                        <div id='jtv-rev_slider' class='rev_slider fullwidthabanner'>
                            <ul>
                                <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slider/slide-img1.jpg'><img src="images/slider/slide-img1.jpg" alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
                                    <div class="info">
                                        <div class='tp-caption jtv-sub-title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;white-space:nowrap;'><span>配件限时直降</span> </div>
                                        <div class='tp-caption jtv-large-title sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;white-space:nowrap;'><span>女王节性价比来袭</span> </div>
                                        <div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1450' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'>FASHION QUEEN'S DAY SHOPPING</div>
                                        <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'><a href='#' class="jtv-shop-now-btn">立即购买</a> </div>
                                    </div>
                                </li>
                                <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slider/slide-img2.jpg'><img src="images/slider/slide-img2.jpg" alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
                                    <div class="info">
                                        <div class='tp-caption jtv-sub-title sft slide2  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;white-space:nowrap;padding-right:0px'><span>每日新鲜时蔬</span> </div>
                                        <div class='tp-caption jtv-large-title sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;white-space:nowrap;'>领400元券</div>
                                        <div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'>乐鲜每一秒！</div>
                                        <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'><a href='#' class="jtv-shop-now-btn">立即抢购</a> </div>
                                    </div>
                                </li>
                                <li data-transition='random' data-slotamount='7' data-masterspeed='1000' data-thumb='images/slider/slide-img3.jpg'><img src="images/slider/slide-img3.jpg" alt="slide-img" data-bgposition='left top' data-bgfit='cover' data-bgrepeat='no-repeat' />
                                    <div class="info">
                                        <div class='tp-caption jtv-sub-title sft slide2  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1100' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:2;white-space:nowrap;padding-right:0px'><span>下单立减35%</span> </div>
                                        <div class='tp-caption jtv-large-title sfl  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1300' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:3;white-space:nowrap;'>品牌乐器大放价</div>
                                        <div class='tp-caption Title sft  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Power2.easeInOut' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'>礼券叠加享折上折</div>
                                        <div class='tp-caption sfb  tp-resizeme ' data-endspeed='500' data-speed='500' data-start='1500' data-easing='Linear.easeNone' data-splitin='none' data-splitout='none' data-elementdelay='0.1' data-endelementdelay='0.1' style='z-index:4;white-space:nowrap;'><a href='#' class="jtv-shop-now-btn">立即抢券</a> </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <!-- end JTV Home Slider -->

            </div>
        </div>
    </div>
    <!-- jtv bottom banner section -->
    <div class="jtv-bottom-banner-section">

    </div>
    <!-- Special Product slider -->

    <section class="special-products">
        <div class="container">
            <div class="slider-items-products">
                <div class="jtv-special-block">
                    <div class="jtv-block-inner">
                        <div class="block-title">
                            <h3>Best Selling</h3>
                        </div>
                        <div class="jtv-decs-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum.</div>
                        <a href="shop_grid.jsp" class="jtv-more-bnt">More Products</a>
                        <div class="jtv-box-timer">
                            <div class="countbox_1 timer-grid"></div>
                        </div>
                    </div>
                    <div id="special-slider" class="product-flexslider hidden-buttons">
                        <div class="slider-items slider-width-col4 products-grid block-content">
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src="images/products/img12.jpg"> </a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                                                    <li><a class="link-wishlist" href="/getUserOrder.html"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp"> Product Title Here </a></h6> </div>
                                            <div class="item-content">
                                                <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                <div class="item-price">
                                                    <div class="price-box"> <span class="regular-price"> <span class="price">$155.00</span> </span> </div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src="images/products/img15.jpg"> </a>
                                            <div class="jtv-box-hover">
                                                <ul class="add-to-links">
                                                    <li><a class="link-quickview" href="#"><i class="icon-magnifier-add icons"></i><span class="hidden">Quick View</span></a></li>
                                                    <li><a class="link-wishlist" href="/getUserOrder.html"><i class="icon-heart icons"></i><span class="hidden">Wishlist</span></a></li>
                                                    <li><a class="link-compare" href="#"><i class="icon-shuffle icons"></i><span class="hidden">Compare</span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item-info">
                                        <div class="info-inner">
                                            <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp"> Product Title Here </a></h6> </div>
                                            <div class="item-content">
                                                <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                <div class="item-price">
                                                    <div class="price-box"> <span class="regular-price"> <span class="price">$225.00</span> </span> </div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src="images/products/img05.jpg"> </a>
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
                                            <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp"> Product Title Here </a></h6> </div>
                                            <div class="item-content">
                                                <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                <div class="item-price">
                                                    <div class="price-box"> <span class="regular-price"> <span class="price">$99.00</span> </span> </div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="item">
                                <div class="item-inner">
                                    <div class="item-img">
                                        <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src="images/products/img06.jpg"> </a>
                                            <div class="new-label new-top-left">new</div>
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
                                            <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp"> Product Title Here </a></h6> </div>
                                            <div class="item-content">
                                                <div class="rating"> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                <div class="item-price">
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price-label">Special Price</span> <span class="price"> $156.00 </span> </p>
                                                        <p class="old-price"> <span class="price-label">Regular Price:</span> <span class="price"> $167.00 </span> </p>
                                                    </div>
                                                </div>
                                                <div class="action">
                                                    <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="content-page">
        <div class="container">
            <!-- Product Tabs-->
            <div class="category-product">
                <div class="navbar nav-menu">
                    <div class="navbar-collapse">
                        <div class="jtv-title">
                            <h3>门店推荐</h3>
                        </div>
                    </div>
                    <!-- /.navbar-collapse -->

                </div>
                <div class="tab-container">
                    <!-- tab product -->
                    <div class="tab-panel active" id="tab-1">
                        <div class="category-products">
                            <c:if test="${empty productsByStoreList}">
                                <div class="storeAlert">
                                    <h5>您还未登录，请登录并选择门店后再尝试
                                    <a href="/getStoreProducts.html?storeId=${sessionScope.storeId}">刷新</a></h5>
                                </div>
                            </c:if>
                            <ul class="products-grid">
                                <c:if test="${not empty productsByStoreList}">
                                    <%int i = 0; pageContext.setAttribute("i", i);%>
                                    <c:forEach items="${productsByStoreList}" var="list">
                                        <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                            <div class="item-inner">
                                                <div class="item-img">
                                                    <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src=${productsList.get(i).pic1Url}> </a>
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
                                                        <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp">${productsList.get(i).productName}</a></h6> </div>
                                                        <div class="item-content">
                                                            <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                            <div class="item-price">
                                                                <div class="price-box"> <span class="regular-price"> <span class="price">$${list.originalPrice}</span> </span> </div>
                                                            </div>
                                                            <div class="action">
                                                                <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                        <%i++; pageContext.setAttribute("i", i);%>
                                    </c:forEach>
                                </c:if>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="jtv-top-banner">
        <div class="container">
            <div class="imgbox"><img src="images/banner1.jpg" alt=""></div>
            <div class="jtv-cont-box">
                <h3>100% <br>
                    天然</h3>
                <div class="jtv-line-bg"></div>
                <p>精选全球3000多种生鲜果蔬品质食材，在体验网上购物新模式的同时享尽各国新鲜美味</p>
            </div>
            <div class="imgbox"><img src="images/banner2.jpg" alt=""></div>
            <div class="jtv-cont-box2">
                <h3>时刻 <br>
                    保鲜</h3>
                <div class="jtv-line-bg"></div>
                <p>90%的果蔬都是产地直供，销售的果蔬零售价比市场果蔬零售价低10%-15%</p>
            </div>
            <div class="imgbox"><img src="images/banner3.jpg" alt=""></div>
            <div class="jtv-cont-box3">
                <h3>健康 <br>
                    处理</h3>
                <div class="jtv-line-bg"></div>
                <p>为消费者打造社区化的一站式新零售体验中心，用科技和人情味带给人们“鲜美生活”</p>
            </div>
        </div>
    </div>


    <div class="jtv-testimonial-block">
        <div class="container">
            <div class="row">
                <div class="col-md-12" data-wow-delay="0.2s">
                    <div class="block-title">
                        <h3>今日上新</h3>
                    </div>
                    <div class="carousel slide" data-ride="carousel" id="quote-carousel">
                        <!-- Bottom Carousel Indicators -->
                        <ol class="carousel-indicators">
                            <li data-target="#quote-carousel" data-slide-to="0"><img class="img-responsive " src="images/products/img05.jpg" alt=""> </li>
                            <li data-target="#quote-carousel" data-slide-to="1"><img class="img-responsive" src="images/products/img14.jpg" alt=""> </li>
                            <li data-target="#quote-carousel" data-slide-to="2" class="active"><img class="img-responsive" src="images/products/img10.jpg" alt=""> </li>
                            <li data-target="#quote-carousel" data-slide-to="3"><img class="img-responsive" src="images/products/img02.jpg" alt=""> </li>
                            <li data-target="#quote-carousel" data-slide-to="4"><img class="img-responsive" src="images/products/img07.jpg" alt=""> </li>
                        </ol>

                        <!-- Carousel Slides / Quotes -->
                        <div class="carousel-inner text-center">

                            <!-- Quote 1 -->
                            <div class="item">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <p>荔枝为无患子科植物荔枝的果实，别名丹荔，荔枝。原产于中国南部，以广东、广西、福建、四川、台湾、云南等地栽培最多。每年6～7月间果实成熟时采收，剥去外壳，取假种皮（荔枝肉）鲜用或干燥后备用。 </p>
                                            <div class="holder-info"> <strong class="name">荔枝</strong> <strong class="designation">Li Zhi</strong></div>
                                        </div>
                                    </div>
                                </blockquote>
                            </div>
                            <!-- Quote 2 -->
                            <div class="item">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <p>苹果，落叶乔木，叶子 椭圆形，花白色带有红晕。果实圆形，味甜或略酸，是常见水果，具有丰富营养成分，有食疗、辅助治疗功能。苹果原产于欧洲、中亚、西亚和土耳其一带，于十九世纪传入中国。中国是世界最大的苹果生产国，在东北、华北、华东、西北和四川、云南等地均有栽培。</p>
                                            <div class="holder-info"><strong class="name">苹果</strong> <strong class="designation">Ping Guo</strong></div>
                                        </div>
                                    </div>
                                </blockquote>
                            </div>
                            <!-- Quote 3 -->
                            <div class="item active">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <p>樱桃的品种有：红灯、早红、先锋、大紫、拉宾斯、早大果、针 叶。其中，红灯和先锋是最常见的品种，也是樱桃中优质的两个品种，红灯颜色略带浅红，果把短小，熟透的"红灯"口感甜中略点酸味；先锋颜色深红，果把较长，熟透的“先锋”口感纯甜。</p>
                                            <div class="holder-info"> <strong class="name">樱桃</strong> <strong class="designation">Ying Tao</strong></div>
                                        </div>
                                    </div>
                                </blockquote>
                            </div>
                            <!-- Quote 4 -->
                            <div class="item">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <p>柑桔是凉性水果，也是世界上最重要的商品水果，是中国亚热带地区栽培面积最广的果树，也是广西最重要的果树。它包括的种类很多，广西主要栽培的有甜橙、宽皮柑桔、柚、金桔、柠檬等，而每一种类又有许多优良品种。中国西部有果城四川南充，主产柑桔等水果。</p>
                                            <div class="holder-info"> <strong class="name">柑橘</strong> <strong class="designation">Gan Ju</strong></div>
                                        </div>
                                    </div>
                                </blockquote>
                            </div>
                            <!-- Quote 5 -->
                            <div class="item">
                                <blockquote>
                                    <div class="row">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <p>龙眼有壮阳益气、补益心脾、养血安神、润肤美容等多种功效，可治疗贫血、心悸、失眠、健忘、神经衰弱及病后、产后身体虚弱等症。现代医学实践证明 ，它还有美容、延年益寿之功效。俗称“桂圆”，是中国南亚热带名贵特产，历史上南方“桂圆”北“人参”之称。</p>
                                            <div class="holder-info"><strong class="name">龙眼</strong> <strong class="designation">Long Yan</strong></div>
                                        </div>
                                    </div>
                                </blockquote>
                            </div>
                        </div>

                        <!-- Carousel Buttons Next/Prev -->
                        <a data-slide="prev" href="#quote-carousel" class="left carousel-control"><i class="fa fa-chevron-left"></i></a> <a data-slide="next" href="#quote-carousel" class="right carousel-control"><i class="fa fa-chevron-right"></i></a> </div>
                </div>
            </div>
        </div>
    </div>

    <c:if test="${not empty sectorsList}">
        <c:forEach items="${sectorsList}" var="sectors">
            <div class="content-page">
                <div class="container">
                    <!-- Product Tabs-->
                    <div class="category-product">
                        <div class="navbar nav-menu">
                            <div class="navbar-collapse">
                                <div class="jtv-title">
                                    <h3>${sectors.sectorName}</h3>
                                </div>
                            </div>
                            <!-- /.navbar-collapse -->
                        </div>
                        <%int i = 0; pageContext.setAttribute("i", i);%>
                        <c:forEach items="${specialProductsList}" var="products" end="${num.get(i) - 1}">
                            <div class="tab-container">
                                <!-- tab product -->
                                <div class="tab-panel active">
                                    <div class="category-products">
                                        <ul class="products-grid">
                                                    <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                                        <div class="item-inner">
                                                            <div class="item-img">
                                                                <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.jsp"> <img alt="Product Title Here" src=${products.pic1Url}> </a>
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
                                                                    <div class="item-title"><h6> <a title="Product Title Here" href="single_product.jsp">${products.productName}</a></h6> </div>
                                                                    <div class="item-content">
                                                                        <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                                                        <div class="item-price">
                                                                            <div class="price-box"> <span class="regular-price"> <span class="price">$${productsByStores.get(i).originalPrice}</span> </span> </div>
                                                                        </div>
                                                                        <div class="action">
                                                                            <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>Add to Cart</span> </button>
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
                            <%i++; pageContext.setAttribute("i", i);%>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </c:forEach>
    </c:if>

    <!-- Footer -->
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div style="text-align:center"> <a href="index.jsp"><img src="images/logo2.png" alt="logo"> </a> </div>
                    <address>
                        <p> <i class="fa fa-map-marker"></i>中软国际（重庆）卓睿有限公司</p>
                        <p><i class="fa fa-mobile"></i><span>+ (86) 0123 456 789</span> </p>
                        <p> <i class="fa fa-envelope"></i><span><a href="mailto:email@domain.com">635837756@qq.com</a></span></p>
                    </address>
                </div>
            </div>
        </div>
        <div class="footer-inner">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4 col-xs-12 col-md-3">
                        <div class="footer-links">
                            <h5>功能链接</h5>
                            <ul class="links">
                                <li><a href="#" title="Product Recall">商品召回</a></li>
                                <li><a href="#" title="Gift Vouchers">礼品卡</a></li>
                                <li><a href="#" title="Returns &amp; Exchange">退货 &amp; 换货</a></li>
                                <li><a href="#" title="Shipping Options">快递服务</a></li>
                                <li><a href="#" title="Help &amp; FAQs">帮助 &amp; 提问</a></li>
                                <li><a href="#" title="Order history">订单历史</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12 col-md-3">
                        <div class="footer-links">
                            <h5>服务</h5>
                            <ul class="links">
                                <li><a href="#">账户</a></li>
                                <li><a href="#">愿望单</a></li>
                                <li><a href="#">购物车</a></li>
                                <li><a href="#">退货政策</a></li>
                                <li><a href="#">其他</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12 col-md-2">
                        <div class="footer-links">
                            <h5>信息</h5>
                            <ul class="links">
                                <li><a href="#">网站导航</a></li>
                                <li><a href="#">新闻</a></li>
                                <li><a href="#">潮流</a></li>
                                <li><a href="about_us.jsp">关于我们</a></li>
                                <li><a href="contact_us.jsp">联系我们</a></li>
                                <li><a href="#">我的订单</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-12 col-md-4">
                        <div class="footer-links">
                            <div class="footer-newsletter">
                                <h5>订阅我们的新闻</h5>
                                <form id="newsletter-validate-detail" method="post" action="#">
                                    <div class="newsletter-inner">
                                        <p>订阅我们，第一时间获取折扣信息！</p>
                                        <input class="newsletter-email" name='Email' placeholder='Enter Your Email'>
                                        <button class="button subscribe" type="submit" title="Subscribe">订阅</button>
                                    </div>
                                </form>
                            </div>
                            <div class="social">
                                <h5>订阅我们</h5>
                                <ul class="inline-mode">
                                    <li class="social-network fb"><a title="Connect us" target="_blank" href="#"><i class="fa fa-firefox"></i></a></li>
                                    <li class="social-network googleplus"><a title="Connect us" target="_blank" href="#"><i class="fa fa-github"></i></a></li>
                                    <li class="social-network tw"><a title="Connect us" target="_blank" href="#"><i class="fa fa-flag"></i></a></li>
                                    <li class="social-network linkedin"><a title="Connect us" target="_blank" href="#"><i class="fa fa-weibo"></i></a></li>
                                    <li class="social-network rss"><a title="Connect us" target="_blank" href="#"><i class="fa fa-qq"></i></a></li>
                                    <li class="social-network instagram"><a title="Connect us" target="_blank" href="#"><i class="fa fa-wechat"></i></a></li>
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
                    <div class="col-sm-5 col-xs-12 coppyright">版权所有 &copy; 2019.派德里克小组保留所有权利.</div>
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

<!-- owl.carousel.min js -->
<script type="text/javascript" src="js/owl.carousel.min.js"></script>

<!-- jtv-jtv-mobile-menu js -->
<script type="text/javascript" src="js/jtv-mobile-menu.js"></script>

<!-- countdown js -->
<script type="text/javascript" src="js/countdown.js"></script>

<!-- main js -->
<script type="text/javascript" src="js/main.js"></script>

<!-- rev-slider js -->
<script type="text/javascript" src="js/rev-slider.js"></script>
<script type='text/javascript'>
    jQuery(document).ready(function() {
        jQuery('#jtv-rev_slider').show().revolution({
            dottedOverlay: 'none',
            delay: 5000,
            startwidth: 1140,
            startheight: 500,
            hideThumbs: 200,
            thumbWidth: 200,
            thumbHeight: 50,
            thumbAmount: 2,
            navigationType: 'thumb',
            navigationArrows: 'solo',
            navigationStyle: 'round',
            touchenabled: 'on',
            onHoverStop: 'on',
            swipe_velocity: 0.7,
            swipe_min_touches: 1,
            swipe_max_touches: 1,
            drag_block_vertical: false,
            spinner: 'spinner0',
            keyboardNavigation: 'off',
            navigationHAlign: 'center',
            navigationVAlign: 'bottom',
            navigationHOffset: 0,
            navigationVOffset: 20,
            soloArrowLeftHalign: 'left',
            soloArrowLeftValign: 'center',
            soloArrowLeftHOffset: 20,
            soloArrowLeftVOffset: 0,
            soloArrowRightHalign: 'right',
            soloArrowRightValign: 'center',
            soloArrowRightHOffset: 20,
            soloArrowRightVOffset: 0,
            shadow: 0,
            fullWidth: 'on',
            fullScreen: 'off',
            stopLoop: 'off',
            stopAfterLoops: -1,
            stopAtSlide: -1,
            shuffle: 'off',
            autoHeight: 'off',
            forceFullWidth: 'on',
            fullScreenAlignForce: 'off',
            minFullScreenHeight: 0,
            hideNavDelayOnMobile: 1500,
            hideThumbsOnMobile: 'off',
            hideBulletsOnMobile: 'off',
            hideArrowsOnMobile: 'off',
            hideThumbsUnderResolution: 0,
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            startWithSlide: 0,
            fullScreenOffsetContainer: ''
        });
    });
</script>
<!-- Hot Deals Timer 1-->
<script type="text/javascript">
    var dthen1 = new Date("12/25/17 11:59:00 PM");
    start = "08/04/15 03:02:11 AM";
    start_date = Date.parse(start);
    var dnow1 = new Date(start_date);
    if (CountStepper > 0)
        ddiff = new Date((dnow1) - (dthen1));
    else
        ddiff = new Date((dthen1) - (dnow1));
    gsecs1 = Math.floor(ddiff.valueOf() / 1000);

    var iid1 = "countbox_1";
    CountBack_slider(gsecs1, "countbox_1", 1);
</script>
<!--Newsletter Popup Start-->
<div id="myModal" class="modal fade">
    <div class="modal-dialog newsletter-popup">
        <div class="modal-content">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <div class="modal-body">
                <h4 class="modal-title">NEWSLETTER SIGNUP</h4>
                <form id="newsletter-form" method="post" action="#">
                    <div class="content-subscribe">
                        <div class="form-subscribe-header">
                            <label>订阅我们的频道，可以第一时间获取最新折扣信息</label>
                        </div>
                        <div class="input-box">
                            <input type="text" class="input-text newsletter-subscribe" title="Sign up for our newsletter" name="email" placeholder="Enter your email address">
                        </div>
                        <div class="actions">
                            <button class="button-subscribe" title="Subscribe" type="submit">订阅</button>
                        </div>
                    </div>
                </form>
                <div class="subscribe-bottom">
                    <input name="notshowpopup" id="notshowpopup" type="checkbox">
                    Don’t show this popup again </div>
            </div>
        </div>
    </div>
</div>
<!--End of Newsletter Popup-->

</body>
</html>
