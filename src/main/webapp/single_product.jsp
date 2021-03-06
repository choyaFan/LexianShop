﻿<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<body class="single-product-page">
<!-- mobile menu -->
<div id="jtv-mobile-menu">
  <ul>
    <li>
      <div class="jtv-search-mob">
        <form id="search1" name="search">
          <div class="input-group">
            <div class="input-group-btn">
              <button class="btn btn-default" type="submit"><i class="fa fa-search"></i> </button>
            </div>
            <input type="text" class="form-control simple" placeholder="Search ..." name="srch-term" id="srch-term">
          </div>
        </form>
      </div>
    </li>
    <li><a href="index.html">Home</a>
      
    </li>
    <li><a href="#">Pages</a>
      <ul>
        <li><a href="shop_grid.shop_grid.jsp"><span>Shop Grid</span></a>
          <ul>
            <li> <a href="#"> <span>Shop Grid Right Sidebar</span> </a> </li>
            <li> <a href="#"> <span>Shop Grid Fullwidth</span> </a> </li>
          </ul>
        </li>
        <li> <a href="#"> <span>Shop List</span> </a>
          <ul>
            <li> <a href="#"> <span>Shop List Right Sidebar</span> </a> </li>
          </ul>
        </li>
        <li> <a href="single_product.single_product.jsp"> <span>Single Product</span> </a> </li>
        <li> <a href="#"> <span>Shopping Cart</span> </a> </li>
        <li><a href="#"><span>Checkout</span></a> </li>
        <li> <a href="#"> <span>Wishlist</span> </a> </li>
        <li><a href="#"><span>Compare</span></a> </li>
        <li><a href="#"><span>Quick View</span></a> </li>
        <li><a href="#"><span>404 Error Page</span></a> </li>
      </ul>
    </li>
    <li><a href="#">Fruits</a>
      <ul>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Apples</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Aurore Grape</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Super Sweet</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Gravenstein</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Orange Pippin</span></a> </li>
          </ul>
        </li>f
        <li> <a href="shop_grid.shop_grid.jsp"><span>Grapes</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Raw Honey</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Flavored Honey</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Propolis</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Exotic Honey</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Citruses</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Potatoes</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Tomatoes</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Pickles</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Cauliflowers</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Exotic Fruits</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Spinach</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Pumpkin</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Kohlrabi</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Green Cabbage</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Summer Berries</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Avocado</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Paprika</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Cheese Holand</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Cheese</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Green Cabbage</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Сauliflower</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Tomato</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Oranges</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Carrots</span></a> </li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="shop_grid.shop_grid.jsp">Vegetables</a>
      <ul>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Herbs and spices</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Lemon Grass</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Rosemary</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Chamomile</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Oregano</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Root vegetables</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Celeriac</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Daikon</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Rutabaga</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Parsnip</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Onion family</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Chives</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Shallot</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Onion</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Garlic</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Legumes</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Black beans</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Kidney beans</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Green beans</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Soy beans</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Haricot bean</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Nectarine</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Charles & Keith</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Fruits</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Rhubarb</span></a> </li>
          </ul>
        </li>
        <li> <a href="shop_grid.shop_grid.jsp"><span>Kiwi fruit</span></a>
          <ul>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Mango</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Orange</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Pepper</span></a> </li>
            <li> <a href="shop_grid.shop_grid.jsp"><span>Quince</span></a> </li>
          </ul>
        </li>
      </ul>
    </li>
    <li><a href="shop_grid.shop_grid.jsp">Healthy Eating</a> </li>
    <li><a href="shop_grid.shop_grid.jsp">Drinks</a> </li>
    <li><a href="#">Blog</a> </li>
    <li><a href="#">Contact us</a> </li>
  </ul>
  <div class="jtv-top-link-mob">
    <ul class="links">
      <li><a title="My Account" href="#">My Account</a> </li>
      <li><a title="Wishlist" href="#">Wishlist</a> </li>
      <li><a title="Checkout" href="#">Checkout</a> </li>
      <li><a title="Blog" href="#"><span>Blog</span></a> </li>
      <li class="last"><a title="Login" href="#"><span>Login</span></a> </li>
    </ul>
  </div>
</div>
<div id="page"> 
  <!--[if lt IE 8]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->
  <div hidden="true" id="app">
    <button id="succ" @click="success(true)" hidden="true"></button>
    <button id="succ1" @click="success1(true)" hidden="true"></button>
    <button id="warn" @click="warning(true)" hidden="true"></button>
  </div>


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

  <!-- Breadcrumbs -->
  <div class="breadcrumbs">
    <div class="container">
      <div class="row">
        <div class="col-xs-12">
          <ul>
            <li class="home"><a href="index.jsp" title="Go to Home Page">主页</a> <span>/</span></li>
            <li><a href="return_products_list" title="">商品列表</a> <span>/ </span></li>
            <li><strong>商品详情</strong></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- Breadcrumbs End -->

  <!-- Main Container -->
  <section class="main-container col1-layout">
    <div class="main">
      <div class="container">
        <div class="row">
          <div class="col-main">
            <div class="product-view">
              <div class="product-essential">
                  <div class="product-img-box col-lg-5 col-sm-6 col-xs-12">
                    <div class="new-label new-top-left"> New </div>
                    <div class="product-image">
                      <div class="product-full"> <img id="product-zoom" src=${singleProduct.pic1Url} data-zoom-image=${singleProduct.pic1Url} alt="product-image"> </div>
                      <div class="more-views">
                        <div class="slider-items-products">
                          <div id="gallery_01" class="product-flexslider hidden-buttons product-img-thumb">
                            <div class="slider-items slider-width-col4 block-content">
                              <div class="more-views-items"> <a href="#" data-image=${singleProduct.pic1Url} data-zoom-image=${singleProduct.pic1Url}> <img id="product-zoom"  src=${singleProduct.pic1Url} alt="product-image"> </a></div>
                              <div class="more-views-items"> <a href="#" data-image=${singleProduct.pic2Url} data-zoom-image=${singleProduct.pic2Url}> <img id="product-zoom"  src=${singleProduct.pic2Url} alt="product-image"> </a></div>
                              <div class="more-views-items"> <a href="#" data-image=${singleProduct.pic3Url} data-zoom-image=${singleProduct.pic3Url}> <img id="product-zoom"  src=${singleProduct.pic3Url} alt="product-image"> </a></div>
                              <div class="more-views-items"> <a href="#" data-image=${singleProduct.pic4Url} data-zoom-image=${singleProduct.pic4Url}> <img id="product-zoom"  src=${singleProduct.pic4Url} alt="product-image"> </a> </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- end: more-images --> 
                  </div>
                  <div class="product-shop col-lg-7 col-sm-6 col-xs-12">

                    <div class="product-name">
                      <h1>${singleProduct.productName}</h1>
                    </div>
                    <div class="price-block">
                      <div class="price-box">
                        <p class="special-price"> <span class="price-label">现价</span> <span id="product-price-48" class="price">
                          <fmt:formatNumber value="${singleProduct.originalPrice*singleProduct.discount}" type="currency" pattern="¥.00"/> / ${singleProduct.unit}
                        </span> </p>
                        <p class="old-price"> <span class="price-label">原价:</span> <span class="price">
                          <fmt:formatNumber value="${singleProduct.originalPrice}" type="currency" pattern="¥.00"/>
                        </span> </p>
                      </div>
                    </div>
                    <div class="info-orther">
                      <p>库存: <span class="in-stock">${singleProduct.inventory}件</span></p>
                      <p>所属类别: ${singleProduct.firstCategory}/${singleProduct.secondCategory}/${singleProduct.secondCategory}</p>
                    </div>
                    <div class="short-description">
                      <h2>简要介绍</h2>
                      <p>${singleProduct.productBriefIntroduction}</p>
                    </div>
                    <form>
                    <div class="form-option">
                      <p class="form-option-title">选择:</p>
                      <div class="attributes">
                        <div class="attribute-label">门店: </div>
                        <div class="attribute-list">
                          <ul class="list-color">
                            <!--
                            <li style="background:#DD4132;"><a href="#">Fiesta</a></li>
                            <li style="background:#4F84C4;"><a href="#">Marina</a></li>
                            <li style="background:#EE82EE;" class="active"><a href="#">Violet</a></li>
                            <li style="background:#92B558;"><a href="#">Green</a></li>
                            <li style="background:#191970;"><a href="#">MidnightBlue</a></li>
                            <li style="background:#ff0000;"><a href="#">red</a></li>
                            -->
                            <div>
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
                                    <c:forEach items="${branchStoreList}" varStatus="storesStatues"
                                               var="storelist">
                                      outer loop
                                      <c:if test="${storelist.storeStatus eq 1}">
                                        inner loop
                                        <option value=${storesStatues.index}>${storelist.storeName}</option>
                                      </c:if>
                                    </c:forEach>
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

                                window.location.href = "select_stores_single" + "?province=" + pName + "&city=" + cName + "&district=" + dName + "&productId=" + ${singleProduct.productId};
                              });

                              store.change(function () {
                                var sName = $("#stores option:selected").text();

                                window.location.href = "update_store?province=" + "${province}" + "&city=" + "${city}" + "&district=" + "${district}"  + "&store=" + sName + "&productId=" + "${singleProduct.productId}";
                              });
                            </script>

                          </ul>
                        </div>
                      </div>
                      <div class="add-to-box">
                        <div class="add-to-cart">
                          <div class="pull-left">
                            <div class="custom pull-left">
                              <label>数量: </label>
                              <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 0 ) result.value--;return false;" class="reduced items-count" type="button"><i class="fa fa-minus">&nbsp;</i></button>
                              <input type="text" class="input-text qty" title="Qty" value="1" maxlength=${singleProduct.inventory} id="qty" name="qty">
                              <button onClick="var result = document.getElementById('qty'); var qty = result.value; if( !isNaN( qty )) result.value++;return false;" class="increase items-count" type="button"><i class="fa fa-plus">&nbsp;</i></button>
                            </div>
                          </div>
                          <button class="button btn-cart" title="Add to Cart" type="button">加入购物车</button>
                        </div>
                        <div class="email-addto-box">
                          <ul class="add-to-links">
                            <li> <a class="link-wishlist"><span>添加到收藏夹</span></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>
                    </form>
                    <div class="form-share">
                      <div class="sendtofriend-print"> <a href="javascript:print();"><i class="fa fa-print"></i> 打印</a>
                    </div>
                  </div>

              </div>
            </div>
          </div>
          <div class="product-collateral col-lg-12 col-sm-12 col-xs-12">
            <div class="add_info">
              <ul id="product-detail-tab" class="nav nav-tabs product-tabs">
                <li class="active"> <a href="#product_tabs_description" data-toggle="tab"> 商品介绍 </a> </li>
                <!--
                <li><a href="#product_tabs_tags" data-toggle="tab">Tags</a></li>
                <li> <a href="#reviews_tabs" data-toggle="tab">Reviews</a> </li>
                <li> <a href="#product_tabs_custom" data-toggle="tab">Custom Tab</a> </li>
                <li> <a href="#product_tabs_custom1" data-toggle="tab">Custom Tab1</a> </li>
                -->
              </ul>
              <div id="productTabContent" class="tab-content">
                <div class="tab-pane fade in active" id="product_tabs_description">
                  <div class="std">
                    ${singleProduct.productDetail}
                  </div>
                </div>
                <!--
                <div class="tab-pane fade" id="reviews_tabs">
                  <div class="box-collateral box-reviews" id="customer-reviews">
                    <div class="box-reviews1">
                      <div class="form-add">
                        <form id="review-form" method="post" action="http://www.jtvcommerce.com/review/product/post/id/176/">
                          <h3>Write Your Own Review</h3>
                          <fieldset>
                            <h4>How do you rate this product? <em class="required">*</em></h4>
                            <span id="input-message-box"></span>
                            <table id="product-review-table" class="data-table">
                              <colgroup>
                              <col>
                              <col width="1">
                              <col width="1">
                              <col width="1">
                              <col width="1">
                              <col width="1">
                              </colgroup>
                              <thead>
                                <tr class="first last">
                                  <th>&nbsp;</th>
                                  <th><span class="nobr">1 *</span></th>
                                  <th><span class="nobr">2 *</span></th>
                                  <th><span class="nobr">3 *</span></th>
                                  <th><span class="nobr">4 *</span></th>
                                  <th><span class="nobr">5 *</span></th>
                                </tr>
                              </thead>
                              <tbody>
                                <tr class="first odd">
                                  <th>Price</th>
                                  <td class="value"><input type="radio" class="radio" value="11" id="Price_1" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="12" id="Price_2" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="13" id="Price_3" name="ratings[3]"></td>
                                  <td class="value"><input type="radio" class="radio" value="14" id="Price_4" name="ratings[3]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="15" id="Price_5" name="ratings[3]"></td>
                                </tr>
                                <tr class="even">
                                  <th>Value</th>
                                  <td class="value"><input type="radio" class="radio" value="6" id="Value_1" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="7" id="Value_2" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="8" id="Value_3" name="ratings[2]"></td>
                                  <td class="value"><input type="radio" class="radio" value="9" id="Value_4" name="ratings[2]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="10" id="Value_5" name="ratings[2]"></td>
                                </tr>
                                <tr class="last odd">
                                  <th>Quality</th>
                                  <td class="value"><input type="radio" class="radio" value="1" id="Quality_1" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="2" id="Quality_2" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="3" id="Quality_3" name="ratings[1]"></td>
                                  <td class="value"><input type="radio" class="radio" value="4" id="Quality_4" name="ratings[1]"></td>
                                  <td class="value last"><input type="radio" class="radio" value="5" id="Quality_5" name="ratings[1]"></td>
                                </tr>
                              </tbody>
                            </table>
                            <input type="hidden" value="" class="validate-rating" name="validate_rating">
                            <div class="review1">
                              <ul class="form-list">
                                <li>
                                  <label class="required" for="nickname_field">Nickname<em>*</em></label>
                                  <div class="input-box">
                                    <input type="text" class="input-text" id="nickname_field" name="nickname">
                                  </div>
                                </li>
                                <li>
                                  <label class="required" for="summary_field">Summary<em>*</em></label>
                                  <div class="input-box">
                                    <input type="text" class="input-text" id="summary_field" name="title">
                                  </div>
                                </li>
                              </ul>
                            </div>
                            <div class="review2">
                              <ul>
                                <li>
                                  <label class="required " for="review_field">Review<em>*</em></label>
                                  <div class="input-box">
                                    <textarea rows="3" cols="5" id="review_field" name="detail"></textarea>
                                  </div>
                                </li>
                              </ul>
                              <div class="buttons-set">
                                <button class="button submit" title="Submit Review" type="submit"><span>Submit Review</span></button>
                              </div>
                            </div>
                          </fieldset>
                        </form>
                      </div>
                    </div>
                    <div class="box-reviews2">
                      <h3>Customer Reviews</h3>
                      <div class="box visible">
                        <ul>
                          <li>
                            <table class="ratings-table">
                              <colgroup>
                              <col width="1">
                              <col>
                              </colgroup>
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#">Excellent</a></h6>
                              <small>Review by <span>Leslie Prichard </span>on 1/3/ 2017 </small>
                              <div class="review-txt"> I have purchased shirts from Minimalism a few times and am never disappointed. The quality is excellent and the shipping is amazing. It seems like it's at your front door the minute you get off your pc. I have received my purchases within two days - amazing.</div>
                            </div>
                          </li>
                          <li class="even">
                            <table class="ratings-table">
                              <colgroup>
                              <col width="1">
                              <col>
                              </colgroup>
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:80%;"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#/catalog/product/view/id/60/">Amazing</a></h6>
                              <small>Review by <span>Sandra Parker</span>on 1/3/ 2017 </small>
                              <div class="review-txt"> Minimalism is the online ! </div>
                            </div>
                          </li>
                          <li>
                            <table class="ratings-table">
                              <colgroup>
                              <col width="1">
                              <col>
                              </colgroup>
                              <tbody>
                                <tr>
                                  <th>Value</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Quality</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:100%;"></div>
                                    </div></td>
                                </tr>
                                <tr>
                                  <th>Price</th>
                                  <td><div class="rating-box">
                                      <div class="rating" style="width:80%;"></div>
                                    </div></td>
                                </tr>
                              </tbody>
                            </table>
                            <div class="review">
                              <h6><a href="#/catalog/product/view/id/59/">Nicely</a></h6>
                              <small>Review by <span>Anthony  Lewis</span>on 1/3/ 2017 </small>
                              <div class="review-txt last"> Unbeatable service and selection. This store has the best business model I have seen on the net. They are true to their word, and go the extra mile for their customers. I felt like a purchasing partner more than a customer. You have a lifetime client in me. </div>
                            </div>
                          </li>
                        </ul>
                      </div>
                      <div class="actions"> <a class="button view-all" id="revies-button" href="#"><span><span>View all</span></span></a> </div>
                    </div>
                    <div class="clear"></div>
                  </div>
                </div>
                <div class="tab-pane fade" id="product_tabs_custom">
                  <div class="product-tabs-content-inner clearfix">
                    <p><strong>Lorem Ipsum</strong><span>&nbsp;is
                      simply dummy text of the printing and typesetting industry. Lorem Ipsum
                      has been the industry's standard dummy text ever since the 1500s, when 
                      an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the 
                      leap into electronic typesetting, remaining essentially unchanged. It 
                      was popularised in the 1960s with the release of Letraset sheets 
                      containing Lorem Ipsum passages, and more recently with desktop 
                      publishing software like Aldus PageMaker including versions of Lorem 
                      Ipsum.</span></p>
                  </div>
                </div>
                <div class="tab-pane fade" id="product_tabs_custom1">
                  <div class="product-tabs-content-inner clearfix">
                    <p> <strong> Comfortable </strong><span>&nbsp;preshrunk shirts. Highest Quality Printing.  6.1 oz. 100% preshrunk heavyweight cotton Shoulder-to-shoulder taping Double-needle sleeves and bottom hem     
                      
                      Lorem Ipsumis
                      simply dummy text of the printing and typesetting industry. Lorem Ipsum
                      has been the industry's standard dummy text ever since the 1500s, when 
                      an unknown printer took a galley of type and scrambled it to make a type
                      specimen book. It has survived not only five centuries, but also the 
                      leap into electronic typesetting, remaining essentially unchanged. It 
                      was popularised in the 1960s with the release of Letraset sheets 
                      containing Lorem Ipsum passages, and more recently with desktop 
                      publishing software like Aldus PageMaker including versions of Lorem 
                      Ipsum.</span></p>
                  </div>
                </div>
                -->
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- Main Container End --> 
  
  <!-- Related Products Slider -->
  
  <div class="container">
    <div class="related-section">
      <div class="slider-items-products">
        <div class="related-block">
          <div class="jtv-block-inner">
            <div class="block-title">
              <h3>相关商品</h3>
            </div>
          </div>
          <div id="related-products-slider" class="product-flexslider hidden-buttons">
            <div class="slider-items slider-width-col4 products-grid block-content">
              <c:forEach items="${displayProductsList}" var="displayproduct">
                <div class="item">
                  <!--
                  <div class="item-inner">
                    <div class="item-img">
                      <div class="item-img-info"> <a class="product-image" title="Product Title Here" href="single_product.single_product.jsp"> <img alt="Product Title Here" src="images/products/img15.jpg"> </a>
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
                        <div class="item-title"><h6> <a title="Product Title Here" href="single_product.single_product.jsp"> 热卖商品1 </a></h6> </div>
                        <div class="item-content">
                          <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                          <div class="item-price">
                            <div class="price-box"> <span class="regular-price"> <span class="price">¥225.00</span> </span> </div>
                          </div>
                          <div class="action">
                            <button class="button btn-cart" type="button" title="" data-original-title="Add to Cart"><span>加入购物车</span> </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  -->
                  <div class="item-inner">
                    <div class="item-img">
                      <div class="item-img-info"><a class="product-image"
                                                    title="Product Title Here"
                                                    href="single_pro?productId=${displayproduct.productId}"> <img
                              alt="Product Title Here" src=${displayproduct.pic1Url}> </a>
                        <div class="jtv-box-hover">
                          <ul class="add-to-links">
                            <li><a class="link-quickview" href="single_pro?productId=${displayproduct.productId}"><i
                                    class="icon-magnifier-add icons"></i><span
                                    class="hidden">Quick View</span></a></li>
                            <li><a class="link-wishlist1" name="${displayproduct.productId}"><i
                                    class="icon-heart icons"></i><span
                                    class="hidden">Wishlist</span></a></li>
                          </ul>
                        </div>
                      </div>
                    </div>

                    <div class="item-info">
                      <div class="info-inner">
                        <div class="item-title"><h6><a title="Product Title Here"
                                                       href="single_product.jsp">${displayproduct.productName}</a>
                        </h6></div>
                        <div class="item-content">
                          <div class="rating"><h6>
                            <c:choose>
                              <c:when test="${displayproduct.inventory gt 0}">
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
                                                       value="${displayproduct.originalPrice*displayproduct.discount}"/>
                                                <fmt:formatNumber value="${productprice}" type="currency"
                                                                  pattern="¥.00"/>/${displayproduct.unit}
                                              </span> </span></div>
                          </div>
                          <div class="action">
                            <button class="button btn-cart" type="button"
                                    title="" data-original-title="Add to Cart">
                              <span>加入购物车</span></button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Related Products Slider End -->

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

<!-- cloud zoom js --> 
<script type="text/javascript" src="js/cloud-zoom.js"></script>

<script>
  new Vue({
    el: '#app',
    data() {
    },
    methods: {
      info (nodesc) {
        this.$Notice.info({
          title: 'Notification title',
          desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
        });
      },
      success (nodesc) {
        this.$Notice.success({
          title: '添加购物车成功',
          desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
        });
      },
      success1 (nodesc) {
        this.$Notice.success({
          title: '添加收藏夹成功',
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
          title: 'Notification title',
          desc: nodesc ? '' : 'Here is the notification description. Here is the notification description. '
        });
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
          storeId: ${singleProduct.storeId},
          productId: ${singleProduct.productId}
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
    $(".link-wishlist1").click(function () {
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
          storeId: ${singleProduct.storeId},
          productId: ${singleProduct.productId},
          amount: document.getElementById("qty").value
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
    $(".btn-cart1").click(function () {
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
