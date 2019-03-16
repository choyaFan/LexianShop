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
                                <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> <a href="#"> <span class="cart_count">${shoppingCartsList.size()}</span><span class="price">购物车 / ${totalPrice}</span> </a> </div>
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
                                                            <fmt:formatNumber value="${productPriceArray[loop.count-1]}" type="currency" pattern="¥.00"/>
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
                                                            <a class="button btn-cart" type="button" href="/getOrderDetail.html?orderId=${orders.value.orderId}" data-original-title="Add to Cart"><span>查看详情</span> </a>
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
