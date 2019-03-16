<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/16
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>钱包充值</title>
    <link rel="stylesheet" href="css/style3.css">
    <link rel="stylesheet" href="css/payment.css">
</head>
<body id="page">
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

<h1 class="text-center">请选择充值金额</h1>

<div class="checkbox-wrap">
    <input type="radio" value="1" name="choose" id="yongshui">
    <label for="yongshui">1元</label>
    <input type="radio" value="5" name="choose" id="guangpan">
    <label for="guangpan">5元</label>
    <input type="radio" value="10" name="choose" id="kaiche">
    <label for="kaiche">10元</label>
    <input type="radio" value="20" name="choose" id="laiji">
    <label for="laiji">20元</label>
    <input type="radio" value="50" name="choose" id="baozhuang">
    <label for="baozhuang">50元</label>
    <input type="radio" value="100" name="choose" id="guandeng">
    <label for="guandeng">100元</label>
</div>
<div style="margin:0 auto;width:200px;" id="aliPay">
    <button>充值</button>
</div>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        $("#aliPay").click(function(){
            var mm = $('input:radio:checked').val();
            window.location.href="goAlipay?money=" + mm;
    });

    })
</script>

</body>
</html>
