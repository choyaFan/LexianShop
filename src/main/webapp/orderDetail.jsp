<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/9
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>订单详情</title>
    <link rel="stylesheet" href="css/style3.css">
    <link href="css/public.css" type="text/css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/base.css"/>
    <script type="text/javascript" src="js/jquery_cart.js"></script>
    <link rel="stylesheet" type="text/css" href="css/checkOut.css" />
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
                                            <button class="btn-checkout" title="Checkout" type="button" onclick="window.location.href='checkOut.action'" ><span>下单</span> </button>
                                            <a href="/shoppingCart.action" class="view-cart"><span>进入购物车</span></a> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
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

    <div class="container">
        <div class="checkout-box">
                <div class="checkout-box-ft">
                    <!-- 商品清单 -->
                    <div id="checkoutGoodsList" class="checkout-goods-box">
                        <div class="xm-box">
                            <div class="box-hd">
                                <h2 class="title">历史订单信息</h2>
                            </div>
                            <div class="box-bd">
                                <dl class="checkout-goods-list">
                                    <dt class="clearfix">
                                        <span class="col col-1">商品名称</span>
                                        <span class="col col-2">购买价格</span>
                                        <span class="col col-3">购买数量</span>
                                        <span class="col col-4">小计（元）</span>
                                        <span class="col col-5">提货地点</span>
                                        <span class="col col-6">状态</span>
                                        <span class="col col-7">操作</span>
                                    </dt>
                                    <% int i = 0; pageContext.setAttribute("i", i); %>
                                    <c:forEach items="${productsList}" var="product">
                                        <dd class="item clearfix">
                                            <div class="item-row">
                                                <div class="col col-1">
                                                    <div class="g-pic">
                                                        <img src="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!40x40.jpg" srcset="http://i1.mifile.cn/a1/T11lLgB5YT1RXrhCrK!80x80.jpg 2x" width="40" height="40" />
                                                    </div>
                                                    <div class="g-info">
                                                        <a href="#">
                                                            <c:out value="${product.productName}"/>                                           </a>
                                                    </div>
                                                </div>

                                                <div class="col col-2">
                                                    <fmt:formatNumber value="${ordersList.get(i).singlePrice}" type="currency" pattern="¥.00"/>

                                                </div>
                                                <div class="col col-3">${ordersList.get(i).amount}</div>
                                                <div class="col col-4">
                                                    <fmt:formatNumber value="${ordersList.get(i).singlePrice * ordersList.get(i).amount}" type="currency" pattern="¥.00"/>

                                                </div>
                                                <div class="col col-5">${cityList.get(i)}</div>
                                                <div class="col col-6">
                                                <c:choose>
                                                    <c:when test="${ordersList.get(i).orderStatus eq 0}">
                                                        待付款
                                                    </c:when>
                                                    <c:when test="${ordersList.get(i).orderStatus eq 1}">
                                                        待发货
                                                    </c:when>
                                                    <c:when test="${ordersList.get(i).orderStatus eq 2}">
                                                        已发货
                                                    </c:when>
                                                    <c:when test="${ordersList.get(i).orderStatus eq 3}">
                                                        已完成
                                                    </c:when>
                                                </c:choose>
                                                </div>
                                                <c:if test="${ordersList.get(i).orderStatus eq 2}">
                                                    <div class="col col-7">
                                                        <a href="receieve_product?productId=${ordersList.get(0).productId}&orderId=${ordersList.get(0).orderId}">收货</a>
                                                    </div>
                                                </c:if>

                                                <% i++; pageContext.setAttribute("i", i);%>
                                            </div>
                                        </dd>
                                    </c:forEach>
                                </dl>
                                <div class="checkout-count clearfix">
                                    <!-- checkout-count-extend -->
                                    <div class="checkout-price">
                                        <ul>

                                            <li>
                                                订单总额：<span>${ordersList.get(0).totalPrice}</span>
                                            </li>
                                            <li>
                                                活动优惠：<span>-0元</span>
                                            </li>
                                            <li>
                                                优惠券抵扣：<span id="couponDesc">-0元</span>
                                            </li>
                                            <li>
                                                运费：<span id="postageDesc">0元</span>
                                            </li>
                                        </ul>
                                        <p class="checkout-total">订单总额：<span><strong id="totalPrice">${ordersList.get(0).totalPrice}</strong>元</span></p>
                                    </div>
                                    <!--  -->
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- 商品清单 END -->
                    <div class="checkout-confirm">

                        <a href="/getUserOrder" class="btn btn-lineDakeLight btn-back-cart">返回订单列表</a>
                    </div>
                </div>
        </div>
    </div>

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
<script type="text/javascript">
    $(function () {
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
</body>
</html>
