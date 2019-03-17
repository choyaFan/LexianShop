<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/12
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>付款成功</title>
    <link rel="stylesheet" href="css/style3.css">
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <link rel="stylesheet" type="text/css" href="css/buyConfirm.css" />
</head>
<body id="page">
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
                        </div>

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
                    <div class="logo"> <h1><a title="eCommerce" href="getSector"><img alt="eCommerce" src="images/logo.png"> </a></h1> </div>
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

<div class="order-info">
    <div class="msg">
        <h3>恭喜！您的订单已付款成功啦~</h3>
        <p></p>

        <p class="post-date">成功付款后，7天内可在门店提货</p>
    </div>
    <div class="info">
        <p>
            金额：<span class="pay-total">${totalPrice}</span>
        </p>
        <p>
            订单：${orderId}</p>
        <p>
            姓名：${sessionScope.userName}<span class="line">/</span>
            ${userPhone}                                    <span class="line">/</span>
            ${province},${city},${district} ${storeName}                                                                <span class="line">/</span>
            不限送货时间                                    <span class="line">/</span>
            个人电子发票                                                    </p>
    </div>
    <div class="icon-box">
        <i class="iconfont"><img src="images/yes_ok.png"></i>
    </div>
</div>

<!-- Footer -->
<footer>
    <div class="footer-top">
        <div class="container">
            <div class="row">
                <div style="text-align:center"> <a href="getSector"><img src="images/logo2.png" alt="logo"> </a> </div>
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
</body>
</html>
