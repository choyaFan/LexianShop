<%--
  Created by IntelliJ IDEA.
  User: 63583
  Date: 2019/3/16
  Time: 10:47
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="width" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@page pageEncoding="utf-8" contentType="text/html;charset=utf-8" %>
<html>
<head>
    <title>钱包充值</title>
    <link rel="stylesheet" href="css/style3.css">
    <link rel="stylesheet" href="css/payment.css">
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
    <button id="payit">充值</button>
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
