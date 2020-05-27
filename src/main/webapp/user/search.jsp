<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/29
  Time: 22:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>产品</title>
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

  <script src="${pageContext.request.contextPath}/js/jquery/jquery-2.2.4.min.js"></script>
  <script src="${pageContext.request.contextPath}/js/jq-load.js"></script>
  <%--<script type="text/javascript">--%>
  <%--alert("${hopeMsg}");--%>
  <%--</script>--%>
  <style type="text/css">

    a{
      text-decoration:none;
      color:black;
      margin-left: 0px;
    }
    ul {
      list-style-type:none;
      margin:0;
      padding:0;
    }

    .uli {
      float:left;
      margin-left: 120px;
      font-family: 微软雅黑;
      font-size: 15px;
    }
    #pic{
      margin-left: 19%;
    }

    #u1{
      float: right;

      margin-top:20px;

    }

    .uli1{
      float:left;
      margin-left:17px;
      font-size: 15px;
    }

    #box{
      width: 84%;
      margin-top:10px;
    }

    .nav_fen{
      margin: 0 auto;
      padding: 0;
    }
    .nav_fen li{
      float: left;
    }
  </style>
</head>
<body >
<header>
  <div id="box">

    <a href="#" >
      <img src="../images/logo.png" alt="logo" id="pic">
    </a>

    <ul id="u1">
      <c:choose>
        <c:when test="${empty user}">
          <li class="uli1"><a href="/user/login.jsp">登录</a></li>
          <li class="uli1"><a href="/user/register.jsp">注册</a></li>
        </c:when>
        <c:otherwise>
          <li class="uli1"><a href="#">${user.username}欢迎您！</a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/hopeList.do" title="收藏">
            <img src="${pageContext.request.contextPath}/images/heart.jpg" width="18px" height="18px"/>
          </a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/myOrders.do">我的订单</a></li>
          <li class="uli1"><a href="/showMyCart.do">我的购物车</a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/userLogout.do">退出</a></li>
        </c:otherwise>
      </c:choose>
    </ul>
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

<c:if test="${empty list}">
  <div style="text-align: center;">
    <span><img src="${pageContext.request.contextPath}/images/search.jpg" width="100" height="100"/></span>
    <span style="font-size: 20px;">
	                  亲，没有找到相关宝贝~
	   </span>
  </div>
</c:if>
<c:if test="${not empty list}">
<div class="container text-center m-t-30">
  <div class="ht-tabs ht-tabs-product text-center">
    <!-- Tab panes -->
    <div class="tab-content">
      <div role="tabpanel" class="tab-pane active" id="tab-description">
        <div class="row">

          <c:forEach items="${list}" var="p">
            <div class="col-sm-6 col-md-4 col-lg-3" style="margin-top: -20px">
              <!-- Product item -->
              <div class="product-item">
                <a href="${pageContext.request.contextPath}/productList.do?pid=${p.pid}">
                  <img src="${pageContext.request.contextPath}/${p.image}" alt="image">
                </a>
                <div class="product-caption">
                  <h4 class="product-name">
                    <p>${p.pname}</p>
                  </h4>
                  <div class="product-price-group">
                    <span class="product-price">${p.price}</span>
                  </div>
                  <div class="ht-btn-group">
                    <a href="${pageContext.request.contextPath}/hope.do?pid=${p.pid}" title="添加到收藏夹" class="wishlist_btn">
                      <i class="fa fa-heart-o" style="margin-top: 10px"></i>
                    </a>
                    <a href="${pageContext.request.contextPath}/addCart.do?pid=${p.pid}&count=1">添加到购物车</a>
                    <a href="#" class="compare_btn"><i class="fa fa-exchange" style="margin-top: 10px"></i></a>
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
</c:if>
<%@ include file="bottom.jsp" %>
</body>
</html>