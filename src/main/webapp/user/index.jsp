<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Home</title>
    <!-- JqueryUI -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <!-- Awesome font icons -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/font-awesome.min.css" media="screen">
    <!-- Owlcoursel -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl-coursel/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/owl-coursel/owl.transitions.css">
    <!-- Magnific-popup -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup/magnific-popup.css">
    <!-- Style -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="screen">
    <!-- Fw -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fw.css" media="screen">
</head>
<body class="bg-m">



<div class="preloader">
    <i class="fa fa-spinner"></i>
</div>
<header>
    <div class="container">
        <div class="row top-header">
            <div class="col-sm-3 text-left">
                <a href="#" class="logo">
                    <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo">
                </a>
            </div>
            <div class="col-sm-9">
                <ul class="top-link pull-right">
                    <c:choose>
                    <c:when test="${empty user}">
                      <li><a title="登录" href="${pageContext.request.contextPath}/user/login.jsp">登录</a></li>
                      <li><a  title="注册"  href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
                      <li> <a href="${pageContext.request.contextPath}/admin/login.jsp">后台管理</a></li>
                    </c:when>
                    <c:otherwise>
                      <li><a href="#">${user.username}欢迎您！</a></li>
                      <li class="uli1"><a href="${pageContext.request.contextPath}/hopeList.do" title="收藏">
                          <img src="${pageContext.request.contextPath}/images/heart.jpg" width="18px" height="18px"/>
                      </a></li>
                      <li class="hidden-xs"><a href="${pageContext.request.contextPath}/myOrders.do">我的订单</a></li>
                      <li class="hidden-xs"><a href="${pageContext.request.contextPath}/showMyCart.do">我的购物车</a></li>
                      <li class="hidden-xs"><a href="${pageContext.request.contextPath}/userLogout.do">退出</a></li>
                    </c:otherwise>
                  </c:choose>

                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="bg-mn color-inher">
            <div class="row m-0">
                <div class="col-sm-1 col-md-1 col-lg-2 p-0">
                    <div class="dropdown category-bar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">
                            <i class="fa fa-bars"></i><span>产品</span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-8 col-md-8 col-lg-7 p-0">
                    <div class="main-menu">
                        <nav class="navbar navbar-default menu">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed m-r-xs-15" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                <ul style="list-style:none;float:left">
                                    <li style="float:left;margin-top: 17px;font-size:20px"><a href="/index.jsp">首页</a></li>
                                    <c:forEach  var="c" items="${clist}" >

                                        <li style="list-style:none;float:left;margin-top: 17px;margin-left:90px;font-size:20px">
                                          <a href="${pageContext.request.contextPath}/page.do?cid=${c.cid}">${c.cname}</a>
                                        </li>

                                    </c:forEach>
                                </ul>
                            </div>
                        </nav>
                    </div>
                </div>
              <form action="${pageContext.request.contextPath}/search.do">
                <div class="col-sm-3 col-md-3 col-lg-3 p-0">
                  <div class="search-box m-l-xs-15 m-r-xs-15">
                    <input type="text" class="form-item" placeholder="搜索..." name="condition">
                    <button type="submit" class="fa fa-search"></button>
                  </div>
                </div>
              </form>

            </div>
        </div>
    </div>
</header>
<!-- Banner -->
<!--动图-->
<section class="m-t-0">
    <div class="container">
        <div class="row slider slider-1">
            <div class="owl" data-items="4" data-itemsDesktop="3" data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1" data-transitionstyle="fade" data-singleItem="true" data-autoplay="true" data-pag="false" data-buttons="false">
                <div class="col-sm-8 col-md-9 pull-right">
                    <div class="slider-item">
                        <img src="${pageContext.request.contextPath}/images/bg-13.png" alt="image">
                        <div class="slider-caption">
                            <h3 class="heading-size-3">100% Natural</h3>
                            <h2 class="heading-size-1">ORGANIC</h2>
                            <h4 class="heading-size-5">最佳有机产品商店</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-md-9 pull-right">
                    <div class="slider-item">
                        <img src="${pageContext.request.contextPath}/images/bg-12.png" alt="image">
                        <div class="slider-caption">
                            <h3 class="heading-size-3">我们有专门的农场</h3>
                            <h2 class="heading-size-1">蔬菜</h2>
                            <h4 class="heading-size-5">来自农场的新鲜的蔬菜和水果</h4>
                        </div>
                    </div>
                </div>
                <div class="col-sm-8 col-md-9 pull-right">
                    <div class="slider-item">
                        <img src="${pageContext.request.contextPath}/images/bg-21.png" alt="image">
                        <div class="slider-caption">
                            <h3 class="heading-size-3">健康</h3>
                            <h1 class="heading-size-1">水果</h1>
                            <h4 class="heading-size-5">大有不同</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<section class="m-t-0">
    <div class="container">
        <div class="row m-0">
            <div class="col-sm-4 m-b-30 p-0">
                <div class="banner bg-img-8 bg-2">
                    <div class="caption">
                        <h2 class="heading-size-4">蔬菜</h2>
                        <h3 class="heading-size-6 f-normal">新鲜</h3>
                        <a href="#" class="btn ht-btn ht-btn-bg-2">了解更多...</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 m-b-30 p-0">
                <div class="banner bg-img-0 bg-6">
                    <div class="caption">
                        <h2 class="heading-size-4">水果</h2>
                        <h3 class="heading-size-6 f-normal">与您的家人分享</h3>
                        <a href="#" class="btn ht-btn ht-btn-bg-2">了解更多...</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-4 p-0">
                <div class="banner bg-img-7 bg-3">
                    <div class="caption">
                        <h2 class="heading-size-4">有机物</h2>
                        <h3 class="heading-size-6 f-normal">100% 果汁</h3>
                        <a href="#" class="btn ht-btn ht-btn-bg-2">了解更多...</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product tabs -->
<div>
  <div class="container text-center m-t-30">
    <h3 class="title f-30">我们的产品</h3>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
    <div class="ht-tabs ht-tabs-product text-center">
      <!-- Tab panes -->
      <div class="tab-content">
        <div role="tabpanel" class="tab-pane active" id="tab-description">
          <div class="row">

            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=1">
                  <img src="${pageContext.request.contextPath}/images/5.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">苹果</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=1" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item ">
                <a href="${pageContext.request.contextPath}/productList.do?pid=2">
                  <img src="${pageContext.request.contextPath}/images/20.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">桃子</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=2" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=10">
                  <img src="${pageContext.request.contextPath}/images/14.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">菠萝</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=10" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=9">
                  <img src="${pageContext.request.contextPath}/images/13.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">西红柿</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=9" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=8">
                  <img src="${pageContext.request.contextPath}/images/12.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">梨子</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=8" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=12">
                  <img src="${pageContext.request.contextPath}/images/17.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">辣椒</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=12" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=15">
                  <img src="${pageContext.request.contextPath}/images/25.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">玉米</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=15" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=3">
                  <img src="${pageContext.request.contextPath}/images/7.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">柠檬</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=3" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=11">
                  <img src="${pageContext.request.contextPath}/images/16.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">莲花白</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=11" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=4">
                  <img src="${pageContext.request.contextPath}/images/8.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">甜椒</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=4" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=5">
                  <img src="${pageContext.request.contextPath}/images/9.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">草莓</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">6.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=5" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=6">
                  <img src="${pageContext.request.contextPath}/images/10.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">香菜</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">6.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=6" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=7">
                  <img src="${pageContext.request.contextPath}/images/11.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">橙子</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=7" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=13">
                  <img src="${pageContext.request.contextPath}/images/18.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">西兰花</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=13" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=14">
                  <img src="${pageContext.request.contextPath}/images/19.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">胡萝卜</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=14" title="添加到收藏夹" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-6 col-md-4 col-lg-3">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=16">
                  <img src="${pageContext.request.contextPath}/images/26.jpg" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <a href="#">蓝莓</a>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">64.00</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=16" class="wishlist_btn" title="添加到收藏夹"><i class="fa fa-heart-o"></i></a>
                    <a href="#">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
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
<!--以下没用-->
<section class="m-t-30">
    <div class="container text-center">
        <h3 class="title f-30">来自博客</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit</p>
        <div class="row m-t-30">
            <div class="owl" data-items="3" data-itemsDesktop="3" data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1" data-transitionstyle="fade" data-singleItem="false" data-autoplay="false" data-pag="false" data-buttons="false">
                <div class="col-sm-12">
                    <div class="blog-item m-b-0">
                        <a href="#" class="blog-img">
                            <img src="../images/banner1.jpg" alt="image">
                        </a>
                        <div class="blog-caption">
                            <ul class="blog-date">
                                <li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
                                <li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
                            </ul>
                            <h3 class="blog-heading"><a href="#">在容器中种植西红柿、辣椒和茄子</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <a href="#" class="btn ht-btn ht-btn-1"><i class="fa fa-long-arrow-right"></i>阅读更多</a>
                        </div>
                    </div>
                </div><!--end blog-->
                <div class="col-sm-12">
                    <div class="blog-item m-b-0">
                        <a href="#" class="blog-img">
                            <img src="../images/banner2.jpg" alt="image">
                        </a>
                        <div class="blog-caption">
                            <ul class="blog-date">
                                <li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
                                <li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
                            </ul>
                            <h3 class="blog-heading"><a href="#">容器蔬菜花椰菜花椰菜</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <a href="#" class="btn ht-btn ht-btn-1"><i class="fa fa-long-arrow-right"></i>阅读更多</a>
                        </div>
                    </div>
                </div><!--end blog-->
                <div class="col-sm-12">
                    <div class="blog-item m-b-0">
                        <a href="#" class="blog-img">
                            <img src="../images/banner3.jpg" alt="image">
                        </a>
                        <div class="blog-caption">
                            <ul class="blog-date">
                                <li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
                                <li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
                            </ul>
                            <h3 class="blog-heading"><a href="#">长杆灌木豆</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <a href="#" class="btn ht-btn ht-btn-1"><i class="fa fa-long-arrow-right"></i>阅读更多</a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="blog-item m-b-0">
                        <a href="#" class="blog-img">
                            <img src="../images/banner4.jpg" alt="image">
                        </a>
                        <div class="blog-caption">
                            <ul class="blog-date">
                                <li><i class="fa fa-clock-o"></i>Nov 04, 2016</li>
                                <li><a href="#"><i class="fa fa-comments-o"></i>3</a></li>
                            </ul>
                            <h3 class="blog-heading"><a href="#">Indeterminate Tomatoes</a></h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.</p>
                            <a href="#" class="btn ht-btn ht-btn-1"><i class="fa fa-long-arrow-right"></i>阅读更多</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Process order -->
<section  class="process">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4">
                <div class="media ht-media">
                    <div class="media-left">
                        <i class="fa fa-phone bg-6"></i>
                    </div>
                    <div class="media-body">
                        <h5 class="media-heading">客服电话: 0123-456-789</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="media ht-media">
                    <div class="media-left">
                        <i class="fa fa-truck bg-2"></i>
                    </div>
                    <div class="media-body">
                        <h5 class="media-heading">所有订单免费配送</h5>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-4">
                <div class="media ht-media">
                    <div class="media-left">
                        <i class="fa fa-undo bg-3"></i>
                    </div>
                    <div class="media-body">
                        <h5 class="media-heading">全额退款</h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Footer -->
<footer class="color-inher">
  <div class="footer-top">
    <div class="container">
      <div class="row">
        <div class="col-sm-3 m-b-xs-30">
          <h3 class="title">信息</h3>
          <ul>
            <li><a href="#">关于我们</a></li>
            <li><a href="#">日常信息</a></li>
            <li><a href="#">隐私策略</a></li>
            <li><a href="#">条款&条件</a></li>
          </ul>
        </div>
        <div class="col-sm-3 m-b-xs-30">
          <h3 class="title">本人账户</h3>
          <ul>
            <li><a href="#">本人账户</a></li>
            <li><a href="#">订单历史</a></li>
            <li><a href="#">愿望清单</a></li>
            <li><a href="#">使用指南</a></li>
          </ul>
        </div>
        <div class="col-sm-3 m-b-xs-30">
          <h3 class="title">杂费</h3>
          <ul>
            <li><a href="#">商标</a></li>
            <li><a href="#">礼券</a></li>
            <li><a href="#">附属企业</a></li>
            <li><a href="#">特价</a></li>
          </ul>
        </div>
        <div class="col-sm-3 m-b-xs-30">
          <h3 class="title">客户服务</h3>
          <ul>
            <li><a href="#">联系我们</a></li>
            <li><a href="#">回复</a></li>
            <li><a href="#">地位级图</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="footer-bottom">
    <div class="container">

    </div>
  </div>
</footer>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery/jquery-2.2.4.min.js"></script>
<!-- JqueryUI -->
<script src="${pageContext.request.contextPath}/js/jquery/jquery-ui.js"></script>
<!-- Bootstrap -->
<script src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.min.js"></script>
<!-- Owl-coursel -->
<script src="${pageContext.request.contextPath}/js/owl-coursel/owl.carousel.js"></script>
<!-- Magnific-popup -->
<script src="${pageContext.request.contextPath}/js/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Script -->
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>
