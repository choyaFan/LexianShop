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
    <script>
        function EnterButtonPress(e) { //传入 event
            var e = e || window.event;

            if (e.keyCode == 13) {
                document.getElementById('searchbutton').focus();
            }
        }

        function EnterAPress(e) {
            var e = e || window.event;

            if (e.keyCode == 13) {

                $("#searcha").click();
            }
        }
    </script>
    <script type="text/javascript" src="js/jquery-1.11.3.js"></script>
    <!-- import Vue.js -->
    <script src="js/vue.min.js"></script>
    <!-- import stylesheet -->
    <link rel="stylesheet" href="css/iview.css">
    <!-- import iView -->
    <script src="js/iview.min.js"></script>

</head>
<body class="category-page">
<!-- mobile menu -->
<script>
    let minMoneyNow=${minMoney};
    let maxMoneyNow=${maxMoney};
</script>
<div id="jtv-mobile-menu" style="left: -250px; width: 250px;">
    <ul class="jtv-mobile-menu">
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
        <li><a href="index.jsp">Home</a>

        </li>
        <li><span class="expand fa fa-plus"></span><a href="#">Pages</a>
            <ul>
                <li><span class="expand fa fa-plus"></span><a href="shop_grid.action"><span>Shop Grid</span></a>
                    <ul>
                        <li><a href="#"> <span>Shop Grid Right Sidebar</span> </a></li>
                        <li><a href="#"> <span>Shop Grid Fullwidth</span> </a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="#"> <span>Shop List</span> </a>
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
        <li><span class="expand fa fa-plus"></span><a href="#">Fruits</a>
            <ul>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.action"><span>Apples</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Aurore Grape</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Super Sweet</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Gravenstein</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Orange Pippin</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Grapes</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Raw Honey</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Flavored Honey</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Propolis</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Exotic Honey</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Citruses</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Potatoes</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Tomatoes</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Pickles</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Cauliflowers</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Exotic Fruits</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Spinach</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Pumpkin</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Kohlrabi</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Green Cabbage</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Summer Berries</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Avocado</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Paprika</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Cheese Holand</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Cheese</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Green Cabbage</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Сauliflower</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Tomato</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Oranges</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Carrots</span></a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><span class="expand fa fa-plus"></span><a href="shop_grid.jsp">Vegetables</a>
            <ul>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Herbs and spices</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Lemon Grass</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Rosemary</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Chamomile</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Oregano</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Root vegetables</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Celeriac</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Daikon</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Rutabaga</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Parsnip</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Onion family</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Chives</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Shallot</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Onion</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Garlic</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Legumes</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Black beans</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Kidney beans</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Green beans</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Soy beans</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Haricot bean</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Nectarine</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Charles &amp; Keith</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Fruits</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Rhubarb</span></a></li>
                    </ul>
                </li>
                <li><span class="expand fa fa-plus"></span> <a href="shop_grid.jsp"><span>Kiwi fruit</span></a>
                    <ul>
                        <li><a href="shop_grid.jsp"><span>Mango</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Orange</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Pepper</span></a></li>
                        <li><a href="shop_grid.jsp"><span>Quince</span></a></li>
                    </ul>
                </li>
            </ul>
        </li>
        <li><a href="shop_grid.jsp">Healthy Eating</a></li>
        <li><a href="shop_grid.jsp">Drinks</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Contact us</a></li>
        <li></li>
    </ul>
    <div class="jtv-top-link-mob">
        <ul class="links">
            <li><a title="My Account" href="#">My Account</a></li>
            <li><a title="Wishlist" href="#">Wishlist</a></li>
            <li><a title="Checkout" href="#">Checkout</a></li>
            <li><a title="Blog" href="#"><span>Blog</span></a></li>
            <li class="last"><a title="Login" href="#"><span>Login</span></a></li>
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
                        <div class="col-xs-12 col-sm-9">
                            <div class="welcome-msg col-sm-3">欢迎来到派氏乐鲜生活馆</div>
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
                                <select id="stores" id="sto">
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

                                    //window.location.href = "select_stores" + "?province=" + pName + "&city=" + cName + "&district=" + dName;
                                });

                                store.change(function () {
                                    var sName = $("#stores option:selected").text();

                                    window.location.href = "stores_changed" + "?store=" + sName;
                                });
                            </script>
                            <!-- End Header Language -->


                            <!-- Header Currency -->

                            <!-- End Header Currency -->

                        </div>
                        <div class="col-sm-3">
                            <!-- Header Top Links -->
                            <div class="jtv-top-links">
                                <div class="links">
                                    <ul>

                                        <li> <a title="Favorites" href="/getUserOrder">订单</a> </li>
                                        <li> <a title="Favorites" href="look_wish_list">收藏夹</a> </li>

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
                                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">${shoppingCartsList.size()}</span><span class="price">购物车 /
                                    <fmt:formatNumber value="${totalPrice}" type="currency" pattern="¥.00"/>
                                </span> </a> </div>
                                <div>
                                    <div class="jtv-top-cart-content">

                                        <!--block-subtitle-->
                                        <ul class="mini-products-list" id="cart-sidebar">
                                            <c:forEach items="${shoppingCartsList}" var="cartData" varStatus="loop">
                                                <li class="item">
                                                    <div class="item-inner"> <a class="product-image" title="${productNameArrayList[loop.count-1]}" href="single_pro?productId=${cartData.productId}"><img alt="${productNameArrayList[loop.count-1]}" src="${pictureUrlArrayList[loop.count-1]}"> </a>
                                                        <div class="product-details">
                                                            <p class="product-name"><a href="single_pro?productId=${cartData.productId}">${productNameArrayList[loop.count-1]}</a> </p>
                                                            <strong>${cartData.amount}</strong> x <span class="price">
                                                            <fmt:formatNumber value="${productPriceArrayList[loop.count-1]}" type="currency" pattern="¥.00"/>
                                                        </span> </div>
                                                    </div>
                                                </li>
                                            </c:forEach>


                                        </ul>

                                        <!--actions-->
                                        <div class="actions">
                                            <button class="btn-checkout" title="Checkout" type="button" href="checkOut.action"><span>下单</span> </button>
                                            <a href="/shoppingCart.action" class="view-cart"><span>进入购物车</span></a> </div>
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


    <!-- Main Container -->
    <section class="main-container col2-left-layout" id="mainpage">
        <div class="container">
            <div class="row">
                <div class="col-sm-9 col-sm-push-3">
                    <div class="category-description std">
                        <div class="slider-items-products">
                            <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                                <div class="slider-items slider-width-col1 owl-carousel owl-theme">

                                    <!-- Item -->
                                    <div class="item"><a href="#"><img alt="" src="images/category-img1.jpg"></a>
                                        <div class="cat-img-title cat-bg cat-box">
                                            <div class="small-tag">广告商品</div>
                                            <h1 class="cat-heading">广告商品1</h1>
                                            <p>描述1</p>
                                        </div>
                                    </div>
                                    <!-- End Item -->

                                    <!-- Item -->
                                    <div class="item"><a href="#"><img alt="" src="images/category-img2.jpg"></a>
                                        <div class="cat-img-title cat-bg cat-box">
                                            <div class="small-tag">广告商品</div>
                                            <h1 class="cat-heading">广告商品2</h1>
                                            <p>描述2 </p>
                                        </div>
                                        <!-- End Item -->

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <article class="col-main col-sm-12">
                        <c:choose>
                            <c:when test="${page.totalCount eq 0}">
                                <h3 class="page-heading"><span class="page-heading-title">对不起，没有找到相关商品，您可以：</span></h3>
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
                                                        <h4>更换搜索关键词</h4>
                                                        <ul class="post-meta">
                                                            <li><i class="fa fa-search"></i>尝试使用更短的搜索关键词，可以扩大商品的搜索范围
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
                                                                        <c:forEach items="${recommandTrueList}" var="recommandProduct">
                                                                        <li class="item"><a href="single_pro?productId=${recommandProduct.productId}"
                                                                                            title="${recommandProduct.productName}"
                                                                                            class="product-image"><img
                                                                                src="${recommandProduct.pic1Url}"
                                                                                alt="${recommandProduct.productName}"></a>
                                                                            <a href="single_pro?productId=${product.productId}"><strong>${recommandProduct.productName}
                                                                                <br></strong></a>
                                                                        </li>
                                                                        </c:forEach>

                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </aside>
                                                        </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="entry-thumb"><a href="blog_single_post.jsp"> <img
                                                            alt="Blog" src="images/blog-img3.jpg"> </a></div>
                                                    <div class="blog-preview_info">
                                                        <h4>更换门店</h4>
                                                        <ul class="post-meta">
                                                            <li><i class="fa fa-map"></i>所选门店可能下架了该商品，更换门店以查找更多商品</li>
                                                        </ul>
                                                        <div class="block block-list block-viewed">
                                                            <div class="block-content">

                                                                <li class="item odd">
                                                                    <p class="product-name"><a href="#"><i
                                                                            class="fa fa-angle-right"></i>门店1(12)</a>
                                                                    </p>
                                                                </li>
                                                                <li class="item even">
                                                                    <p class="product-name"><a href="#"><i
                                                                            class="fa fa-angle-right"></i>门店1(8)</a></p>
                                                                </li>
                                                                <li class="item last odd">
                                                                    <p class="product-name"><a href="#"><i
                                                                            class="fa fa-angle-right"></i>门店1(4)</a></p>
                                                                </li>

                                                            </div>
                                                        </div>
                                                        <a class="blog-preview_btn" href="blog_single_post.jsp">查看更多门店
                                                            <i class="fa fa-long-arrow-right"></i></a></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--</div>-->
                            </c:when>
                            <c:otherwise>


                                <h3 class="page-heading"><span class="page-heading-title">

                                            搜索🔍  ${searchkey}
                                </span></h3>
                                <div class="toolbar">
                                    <div class="row">
                                        <div class="col-md-4 col-sm-8">
                                            <div class="btn-group">
                                            </div>
                                            <a href="#" id="compare-total"> </a></div>
                                        <div class="col-sm-2 text-right sort-by hidden-sm">
                                            <label class="control-label" for="input-sort">排序方式: </label>
                                        </div>
                                        <div class="col-md-3 col-sm-6 text-right">
                                            <select id="input-sort" class="form-control col-sm-3">
                                                <c:if test="${!empty sortWay}">
                                                    <c:choose>
                                                        <c:when test="${sortWay eq 0}">
                                                            <option value="0" selected="selected">目前:默认</option>
                                                        </c:when>
                                                        <c:when test="${sortWay eq 1}">
                                                            <option value="1" selected="selected">目前:销量(从高到低)</option>
                                                        </c:when>
                                                        <c:when test="${sortWay eq 2}">
                                                            <option value="2" selected="selected">目前:销量(从低到高)</option>
                                                        </c:when>
                                                        <c:when test="${sortWay eq 3}">
                                                            <option value="3" selected="selected">目前:价格(从高到低)</option>
                                                        </c:when>
                                                        <c:when test="${sortWay eq 4}">
                                                            <option value="4" selected="selected">目前:价格(从低到高)</option>
                                                        </c:when>

                                                    </c:choose>
                                                </c:if>
                                                <option value="0">默认</option>
                                                <option value="1">销量(从高到低)</option>
                                                <option value="2">销量(从低到高)</option>
                                                <option value="3">价格(从高到低)</option>
                                                <option value="4">价格(从低到高)</option>
                                            </select>
                                        </div>

                                        <div class="col-sm-1 text-right show-limit hidden-sm">
                                            <label class="control-label" for="input-limit">显示: </label>
                                        </div>
                                        <div class="col-md-2 col-sm-6 text-right">
                                            <select id="input-limit" class="form-control">
                                                <c:if test="${!empty limitWay}">
                                                    <c:choose>
                                                        <c:when test="${limitWay eq 15}">
                                                            <option value="0" selected="selected">目前:15</option>
                                                        </c:when>
                                                        <c:when test="${limitWay eq 21}">
                                                            <option value="1" selected="selected">目前:21</option>
                                                        </c:when>
                                                        <c:when test="${limitWay eq 30}">
                                                            <option value="2" selected="selected">目前:30</option>
                                                        </c:when>
                                                        <c:when test="${limitWay eq 39}">
                                                            <option value="3" selected="selected">目前:39</option>
                                                        </c:when>
                                                        <c:when test="${limitWay eq 48}">
                                                            <option value="4" selected="selected">目前:48</option>
                                                        </c:when>

                                                    </c:choose>
                                                </c:if>
                                                <option value="15">15</option>
                                                <option value="21">21</option>
                                                <option value="30">30</option>
                                                <option value="39">39</option>
                                                <option value="48">48</option>
                                            </select>
                                        </div>

                                    </div>
                                </div>
                                <div class="category-products">
                                    <ul class="products-grid">
                                        <!--依次显示商品-->

                                        <div hidden="true" id="jud">
                                            <button id="succ1" @click="success1(true)" hidde="true"/>
                                            <button id="succ" @click="success(true)" hidde="true"/>
                                            <button id="warn" @click="warning(true)" hidde="true"/>
                                            <button id="err" @click="error(true)" hidde="true"/>
                                        </div>

                                        <c:forEach items="${productsList}" var="product">
                                            <li class="item col-lg-4 col-md-4 col-sm-4 col-xs-6">
                                                <div class="item-inner">
                                                    <div class="item-img">
                                                        <div class="item-img-info"><a class="product-image"
                                                                                      title="Product Title Here"
                                                                                      href="single_pro?productId=${product.productId}"> <img
                                                                alt="Product Title Here" src=${product.pic1Url}> </a>
                                                            <div class="jtv-box-hover">
                                                                <ul class="add-to-links">
                                                                    <li><a class="link-quickview" href="single_pro?productId=${product.productId}"><i
                                                                            class="icon-magnifier-add icons"></i><span
                                                                            class="hidden">查看商品</span></a></li>
                                                                    <li><a class="link-wishlist" name="${product.productId}"><i
                                                                            class="icon-heart icons"></i><span
                                                                            class="hidden">加入收藏夹</span></a></li>
                                                                </ul>
                                                            </div>
                                                        </div>
                                                    </div>

                                                    <div class="item-info">
                                                        <div class="info-inner">
                                                            <div class="item-title"><h6><a title="Product Title Here"
                                                                                           href="single_pro?productId=${product.productId}">${product.productName}</a>
                                                            </h6></div>
                                                            <div class="item-content">
                                                                <div class="rating"><h6>
                                                                    <c:choose>
                                                                        <c:when test="${product.inventory gt 0}">
                                                                            有货
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            无货
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </h6></div>
                                                                <div class="item-price">
                                                                    <div class="price-box"> <span class="regular-price"> <span
                                                                            class="price">
                                                <c:set var="productprice"
                                                       value="${product.originalPrice*product.discount}"/>
                                                 <fmt:formatNumber value="${product.originalPrice*product.discount}" type="currency" pattern="¥.00"/> / ${product.unit}

                                              </span> </span></div>
                                                                    <p class="old-price"> <span class="price">
                                                                        <c:if test="${product.discount ne 1}">
                                                                            <fmt:formatNumber value="${product.originalPrice}" type="currency" pattern="¥.00"/>
                                                                        </c:if>

                        </span> </p>
                                                                </div>
                                                                <div class="action">
                                                                    <button class="button btn-cart" type="button"
                                                                            title="" data-original-title="Add to Cart" name="${product.productId}">
                                                                        <span>加入购物车</span></button>
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
                                                <c:choose>
                                                    <c:when test="${page.totalPageCount <=10 }">
                                                        <c:set var="begin" value="1"/>
                                                        <c:set var="end" value="${page.totalPageCount }"/>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <c:set var="begin" value="${page.pageNow-4 }"/>
                                                        <c:set var="end" value="${page.totalPageCount }"/>
                                                        <c:if test="${begin < 1 }">
                                                            <c:set var="begin" value="1"/>
                                                            <c:set var="end" value="10"/>
                                                        </c:if>
                                                        <c:if test="${end > page.totalPageCount }">
                                                            <c:set var="begin" value="${page.totalPageCount-5 }"/>
                                                            <c:set var="end" value="${page.totalPageCount }"/>
                                                        </c:if>
                                                    </c:otherwise>
                                                </c:choose>
                                                    <%--上一页 --%>
                                                <c:choose>
                                                    <c:when test="${page.pageNow eq 1 }">
                                                        <%--当前页为第一页，隐藏上一页按钮--%>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="?pageNow=${page.pageNow-1}"><</a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                                    <%--显示第一页的页码--%>
                                                <c:if test="${begin >= 2 }">
                                                    <li><a href="?pageNow=1">1</a></li>
                                                </c:if>
                                                    <%--显示点点点--%>
                                                <c:if test="${begin  > 2 }">
                                                    <li><a>...</a></li>
                                                </c:if>
                                                    <%--打印 页码--%>
                                                <c:forEach begin="${begin }" end="${end }" var="i">
                                                    <c:choose>
                                                        <c:when test="${i eq page.pageNow }">
                                                            <li class="active"><span>${i}</span></li>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <li><a href="?pageNow=${i}">${i}</a></li>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </c:forEach>
                                                    <%-- 显示点点点 --%>
                                                <c:if test="${end < page.totalPageCount-1 }">
                                                    <li><a>...</a></li>
                                                </c:if>
                                                    <%-- 显示最后一页的数字 --%>
                                                <c:if test="${end < page.totalPageCount }">
                                                    <li>
                                                        <a href="?pageNow=${page.totalPageCount}">${page.totalPageCount}</a>
                                                    </li>
                                                </c:if>
                                                    <%--下一页 --%>
                                                <c:choose>
                                                    <c:when test="${page.pageNow eq page.totalPageCount }">
                                                        <%--到了尾页隐藏，下一页按钮--%>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <li><a href="?pageNow=${page.pageNow+1}">></a></li>
                                                    </c:otherwise>
                                                </c:choose>
                                                <!--
                                                <li class="active"><span>1</span></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">&gt;</a></li>
                                                <li><a href="#">&gt;|</a></li>
                                                -->
                                            </ul>
                                        </div>
                                        <c:set var="previousNum" value="${(page.pageNow-1)*page.pageSize}"/>
                                        <div class="col-sm-6 text-right">${previousNum+1}- ${previousNum+page.productsPerPage}
                                            件商品, 共 ${page.totalCount} 件 (${page.totalPageCount} 页)
                                        </div>
                                    </div>
                                </div>

                            </c:otherwise>
                        </c:choose>
                    </article>
                    <!--	///*///======    End article  ========= //*/// -->
                </div>
                <div class="sidebar col-sm-3 col-xs-12 col-sm-pull-9">
                    <aside class="sidebar">
                        <div class="block block-tags">
                            <div class="block-title"><h3>类别选择</h3></div>
                            <div class="block-content">
                                <div class="tags-list">
                                    <c:forEach items="${categoryList}" var="productLabel">
                                        <a href="add_condition?condition=${productLabel.third_category}">${productLabel.third_category}</a>
                                    </c:forEach>
                                </div>
                                <div class="actions"><a href="refresh" class="view-all">查看所有类别</a></div>
                            </div>
                        </div>
                        <div class="block product-price-range ">
                            <div class="block-title" class="category-products"><h3>价格区间</h3></div>
                            <div class="block-content">
                                <div id="app">
                                    <!--
                                    <div data-label-reasult="Range:" data-min="0" data-max="500" data-unit="$"
                                         class="slider-range-price ui-slider ui-slider-horizontal ui-widget ui-widget-content ui-corner-all"
                                         data-value-min="50" data-value-max="350">
                                        <div class="ui-slider-range ui-widget-header ui-corner-all"
                                             style="left: 10%; width: 60%;"></div>
                                        <span class="ui-slider-handle ui-state-default ui-corner-all" tabindex="0"
                                              style="left: 10%;"/>
                                    </div>
                                    -->
                                        <Slider v-model="value1" @on-change="setMoney" range :min="${minMoney}" :max="${maxMoney}"></Slider>

                                </div>
                                <div class="amount-range-price">范围: <fmt:formatNumber value="${minMoney}" type="currency" pattern="¥.00"/>
                                     - <fmt:formatNumber value="${maxMoney}" type="currency" pattern="¥.00"/></div>
                                <button type="submit" title="Submit" class="button button-clear" onclick="location.href='money_condition?minMoney='+minMoneyNow+'&maxMoney='+maxMoneyNow"><span>确定</span>
                                <!-- 复选框
                                <ul class="check-box-list">
                                    <li>
                                        <input type="checkbox" id="p1" name="cc">
                                        <label for="p1"> <span class="button"></span> ¥20 - ¥50<span
                                                class="count">(5)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p2" name="cc">
                                        <label for="p2"> <span class="button"></span> ¥50 - ¥100<span
                                                class="count">(10)</span> </label>
                                    </li>
                                    <li>
                                        <input type="checkbox" id="p3" name="cc">
                                        <label for="p3"> <span class="button"></span> ¥100 - ¥250<span class="count">(12)</span>
                                        </label>
                                    </li>
                                </ul>
                                -->

                            </div>
                        </div>

                        <div class="block block-compare">
                            <div class="block-title ">已选条件</div>
                            <div class="block-content">
                                <ol id="compare-items">
                                    <c:forEach items="${cdclass}" var="clas">
                                    <li class="item">
                                        <input type="hidden" value="2173" class="compare-item-id">
                                        <a class="jtv-btn-remove" title="Remove This Item" href="remove_condition?condition=${clas}"
                                           class="product-name"></a>
                                        <a href="#" class="product-name">
                                            <i class="fa fa-angle-right"></i>${clas}</a></li>
                                    </c:forEach>
                                    <c:if test="${!empty cdmoney}" >
                                        <li class="item">
                                            <input type="hidden" value="2173" class="compare-item-id">
                                            <a class="jtv-btn-remove" title="Remove This Item" href="remove_money_condition"
                                               class="product-name"></a>
                                            <a href="#" class="product-name">
                                                <i class="fa fa-angle-right"></i>¥${cdmoney[0]}--¥${cdmoney[1]}</a></li>
                                    </c:if>

                                </ol>
                                <div class="ajax-checkout">
                                    <button type="submit" title="Submit" class="button button-compare" onclick="location.href='empty_condition'"><span>重置</span>
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!--
                        <div class="block block-layered-nav">
                            <div class="block-title"><h3>所有类别</h3></div>
                            <div class="block-content">
                                <p class="block-subtitle">子标题</p>
                                <dl id="narrow-by-list">
                                    <dt class="odd">价格</dt>
                                    <dd class="odd">
                                        <ol>
                                            <li><a href="#"><span class="price">¥0.00</span> - <span class="price">¥99.99</span></a>
                                                (6)
                                            </li>
                                            <li><a href="#"><span class="price">¥100.00</span>及以上</a> (6)</li>
                                        </ol>
                                    </dd>
                                    <dt class="even">类别</dt>
                                    <dd class="even">
                                        <ol>
                                            <li><a href="#">类别一</a> (20)</li>
                                            <li><a href="#">类别二</a> (25)</li>
                                            <li><a href="#">类别三</a> (8)</li>
                                            <li><a href="#">类别四</a> (5)</li>
                                        </ol>
                                    </dd>
                                    <dt class="odd">其他条件</dt>
                                    <dd class="odd">
                                        <ol class="bag-material">
                                            <li><a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">仅查询有货</a></li>
                                            <li><a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">其他功能1</a></li>
                                            <li><a href="#">
                                                <input type="checkbox" name="Material" value="Beaded">其他功能2</a></li>


                                        </ol>
                                    </dd>


                                </dl>
                            </div>
                        </div>
                        -->

                        <div class="block block-cart">
                            <div class="block-title "><h3>为您推荐</h3></div>
                            <div class="block-content">

                                <p class="block-subtitle">根据您的购买记录推荐商品</p>
                                <c:forEach items="${recommandTrueList}" var="recommandProduct">
                                    <ul>
                                        <li class="item"><a href="single_pro?productId=${recommandProduct.productId}" title="${recommandProduct.productName}" class="product-image"><img
                                                src=${recommandProduct.pic1Url} alt="${recommandProduct.productName}"></a>
                                            <div class="product-details">
                                                <strong><span class="price">
                                                    <fmt:formatNumber value="${recommandProduct.originalPrice*recommandProduct.discount}" type="currency" pattern="¥.00"/> / ${recommandProduct.unit}
                                                </span></strong>
                                                <p class="product-name"><a href="single_pro?productId=${recommandProduct.productId}">${recommandProduct.productName}</a></p>
                                            </div>
                                        </li>

                                    </ul>
                                </c:forEach>

                            </div>
                        </div>

                        <div class="custom-slider">
                            <div>
                                <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                    <ol class="carousel-indicators">
                                        <li class="" data-target="#carousel-example-generic" data-slide-to="0"></li>
                                        <li data-target="#carousel-example-generic" data-slide-to="1"
                                            class="active"></li>
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
                                    <a class="left carousel-control" href="#" data-slide="next"> <span class="sr-only">Next</span>
                                    </a></div>
                            </div>
                        </div>
                        <!--
                        <div class="block block-list block-viewed">
                            <div class="block-title"><h3>不知道干啥</h3></div>
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
                            <div class="block-title"><h3>调查</h3></div>
                            <form id="pollForm" action="#" method="post"
                                  onsubmit="return validatePollAnswerIsSelected();">
                                <div class="block-content">
                                    <p class="block-subtitle">对本搜索结果是否满意？</p>
                                    <ul id="poll-answers">
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_1"
                                                   value="1">
                                            <span class="label">
                        <label for="vote_1">满意</label>
                        </span></li>
                                        <li class="even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_2"
                                                   value="2">
                                            <span class="label">
                        <label for="vote_2">基本满意</label>
                        </span></li>
                                        <li class="odd">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_3"
                                                   value="3">
                                            <span class="label">
                        <label for="vote_3">不太满意</label>
                        </span></li>
                                        <li class="last even">
                                            <input type="radio" name="vote" class="radio poll_vote" id="vote_4"
                                                   value="4">
                                            <span class="label">
                        <label for="vote_4">很不满意</label>
                        </span></li>
                                    </ul>
                                    <div class="actions">
                                        <button type="submit" title="Vote" class="button button-vote"><span>提交</span>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        -->

                    </aside>
                </div>
            </div>
        </div>


    </section>
    <!-- Main Container End -->


    <!-- Footer -->
    <footer>
        <div class="footer-top">
            <div class="container">
                <div class="row">
                    <div style="text-align:center"><a href="index.jsp"><img src="images/footer-logo.png" alt="logo">
                    </a></div>
                    <address>
                        <p><i class="fa fa-map-marker"></i>店铺地址</p>
                        <p><i class="fa fa-envelope"></i><span><a href="mailto:email@domain.com">店名</a></span></p>
                        <p><i class="fa fa-mobile"></i><span>此店铺电话</span></p>
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
                                        <p>Subscribe to be the first to know about Sales, Events, and Exclusive
                                            Offers!</p>
                                        <input class="newsletter-email" name="Email" placeholder="Enter Your Email">
                                        <button class="button subscribe" type="submit" title="Subscribe">Subscribe
                                        </button>
                                    </div>
                                </form>
                            </div>
                            <div class="social">
                                <h5>Follow Us</h5>
                                <ul class="inline-mode">
                                    <li class="social-network fb"><a title="Connect us on Facebook" target="_blank"
                                                                     href="#"><i class="fa fa-facebook"></i></a></li>
                                    <li class="social-network googleplus"><a title="Connect us on Google+"
                                                                             target="_blank" href="#"><i
                                            class="fa fa-google-plus"></i></a></li>
                                    <li class="social-network tw"><a title="Connect us on Twitter" target="_blank"
                                                                     href="#"><i class="icon-social-twitter icons"></i></a>
                                    </li>
                                    <li class="social-network linkedin"><a title="Connect us on Linkedin"
                                                                           target="_blank" href="#"><i
                                            class="fa fa-linkedin"></i></a></li>
                                    <li class="social-network rss"><a title="Connect us on rss" target="_blank"
                                                                      href="#"><i class="fa fa-rss"></i></a></li>
                                    <li class="social-network instagram"><a title="Connect us on Instagram"
                                                                            target="_blank" href="#"><i
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
                    <div class="col-sm-5 col-xs-12 coppyright">Copyright © 2017.Company name All rights reserved.<a
                            target="_blank" href="http://sc.chinaz.com/moban/">网页模板</a></div>
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

<a href="#" id="toTop"></a>
<div>${minMoney}</div>

<script>
    new Vue({
        el: "#mainpage",
        data() {
          return {
            value1: [${minMoney}, ${maxMoney}]
          }
        },
        methods: {
                info (nodesc) {
                this.$Notice.info({
                    title: 'Notification title',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            success1 (nodesc) {
                this.$Notice.success({

                    title: '添加收藏夹成功',
                    desc: nodesc ? '' : 'Hefre is the notification description. Here is the notification description. '
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
                    title: '已经添加该商品',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            error (nodesc) {
                this.$Notice.error({
                    title: '添加购物车失败',
                    desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
                });
            },
            setMoney(data){
                minMoneyNow = data[0];
                maxMoneyNow = data[1];
            }
        },
        events: {

        }
    })
</script>
<script type="text/javascript">
    var inputSort = $("#input-sort");
    inputSort.change(function () {
        var sortOption = inputSort.val();
        <c:choose>
        <c:when test="${!empty searchkey}">
        window.location.href = "sort_products?sortWay="+sortOption+"&searchKey="+${searchkey};
        </c:when>
        <c:otherwise>
        window.location.href = "sort_products?sortWay="+sortOption+"&searchKey=";
        </c:otherwise>
        </c:choose>

    });
</script>
</body>


<script type="text/javascript">
    var inputLimit = $("#input-limit");
    inputLimit.change(function () {
        var limitOption = inputLimit.val();
        window.location.href = "limit_products?limitWay="+limitOption;
    });
</script>

<script type="text/javascript">
    $(function () {
        $(".link-wishlist").click(function () {
            $.ajax({
                url: "/add_wish",
                data: {
                    storeId: ${storeId},
                    productId: $(this).context.name
                },
                type: "POST",
                dataType: "json",//如果接受不到json对象，即总是进入error函数，也可以将json换为text,就一定可以进到success里面了
                success: function (data) {
                    if(data['succ'] === 'success')
                        $("#succ1").click();
                    else
                        $('#warn').click();
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(XMLHttpRequest.readyState + "-" + XMLHttpRequest.status + "-" + XMLHttpRequest.responseText);
                }
            });
        })
        $(".btn-cart").click(function () {
            $.ajax({
                url: "/add_shopping_cart",
                data: {
                    storeId: ${storeId},
                    productId: $(this).context.name,
                    amount: 1
                },
                type: "POST",
                dataType: "json",//如果接受不到json对象，即总是进入error函数，也可以将json换为text,就一定可以进到success里面了
                success: function (data) {
                    $("#succ").click();
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    $("#err").click();
                }
            });
        })
                $("#district").change(function () {
                    $.ajax({
                        url: "/select_stores",
                        data: {
                            province: $("#province option:selected").text(),
                            city: $("#city option:selected").text(),
                            district: $("#district option:selected").text()
                        },
                        type: "POST",
                        dataType: "json",//如果接受不到json对象，即总是进入error函数，也可以将json换为text,就一定可以进到success里面了
                        success: function (data) {
                            for(let i=0;i<data['branchStoreList'].length;i++) {
                                if(data['branchStoreList'][i].storeStatus == 1)
                                    $("#stores").append("<option value='"+i+"'>"+data['branchStoreList'][i].storeName+"</option>");
                            }
                        },
                        error: function (XMLHttpRequest, textStatus, errorThrown) {
                            alert("王子琦是大sb");
                        }
                    });
                })

            })

</script>

</html>
