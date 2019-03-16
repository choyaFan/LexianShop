<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
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
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-4 col-xs-12 jtv-logo-box">
                        <!-- Header Logo -->
                        <div class="logo"> <h1><a title="eCommerce" href="getSector"><img alt="eCommerce" src="images/name2.png"> </a></h1> </div>
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

    <section class="main-container col1-layout">
        <div class="main container">
            <div class="col-main">
                <div class="shopping-cart-inner">
                    <div class="page-title">
                        <h2>购物车纵览</h2>
                    </div>
                    <div class="page-content">
                        <div class="heading-counter warning">你的购物车中共有: <span>${cartData.size()} 件商品</span></div>
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
                                    <%int i = 0; pageContext.setAttribute("i", i);%>
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
                                        <td><fmt:formatNumber value="${productsByStoreList.get(i).originalPrice * productsByStoreList.get(i).discount}" pattern="￥####.##"/> </td>
                                        <td><fmt:formatNumber value="${productsByStoreList.get(i).originalPrice * productsByStoreList.get(i).discount * cartData.amount}" pattern="￥####.##"/> </td>
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
                        <h2>猜你喜欢</h2>
                    </div>
                    <div class="category-products">
                        <ul class="products-grid" id="mainpage">
                            <div hidden="true" id="jud">
                                <button id="succ1" @click="success1(true)" hidde="true"/>
                                <button id="succ" @click="success(true)" hidde="true"/>
                                <button id="warn" @click="warning(true)" hidde="true"/>
                                <button id="err" @click="error(true)" hidde="true"/>
                            </div>

                            <c:forEach items="${recommandTrueList}" var="recommandProduct">
                                <li class="item col-lg-3 col-md-3 col-sm-4 col-xs-6">
                                    <div class="item-inner">
                                        <div class="item-img">
                                            <div class="item-img-info"><a class="product-image"
                                                                          title="Product Title Here"
                                                                          href="single_pro?productId=${recommandProduct.productId}"> <img
                                                    alt="Product Title Here" src=${recommandProduct.pic1Url}> </a>
                                                <div class="jtv-box-hover">
                                                    <ul class="add-to-links">
                                                        <li><a class="link-quickview" href="single_pro?productId=${recommandProduct.productId}"><i
                                                                class="icon-magnifier-add icons"></i><span
                                                                class="hidden">查看商品</span></a></li>
                                                        <li><a class="link-wishlist" name="${recommandProduct.productId}"><i
                                                                class="icon-heart icons"></i><span
                                                                class="hidden">加入收藏夹</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-info">
                                            <div class="info-inner">
                                                <div class="item-title"><h6><a title="Product Title Here"
                                                                               href="single_pro?productId=${recommandProduct.productId}">${recommandProduct.productName}</a>
                                                </h6></div>
                                                <div class="item-content">
                                                    <div class="rating"><h6>
                                                        <c:choose>
                                                            <c:when test="${recommandProduct.inventory gt 0}">
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
                                                       value="${recommandProduct.originalPrice*recommandProduct.discount}"/>
                                                 <fmt:formatNumber value="${recommandProduct.originalPrice*recommandProduct.discount}" type="currency" pattern="¥.00"/> / ${recommandProduct.unit}

                                              </span> </span></div>
                                                        <p class="old-price"> <span class="price">
                                                                        <c:if test="${recommandProduct.discount ne 1}">
                                                                            <fmt:formatNumber value="${recommandProduct.originalPrice}" type="currency" pattern="¥.00"/>
                                                                        </c:if>

                        </span> </p>
                                                    </div>
                                                    <div class="action">
                                                        <button class="button btn-cart" type="button"
                                                                title="" data-original-title="Add to Cart" name="${recommandProduct.productId}">
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
                </div>
            </div>
        </div>
    </section>
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

</body>
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
    })

</script>
</html>
