<%--
  Created by IntelliJ IDEA.
  author: Jsonor
  date: 2018/5/22 16:38
  description: Description
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>订单页面</title>
  <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
  <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/register_check.js"></script>
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
    h4{
      float: right;
      margin-right: 38%;
    }
  </style>
</head>
<body>
<header>
  <div id="box">

    <a href="#" >
      <img src="${pageContext.request.contextPath}/images/logo.png" alt="logo" id="pic">
    </a>

    <ul id="u1">
      <c:choose>
        <c:when test="${empty user}">
          <li class="uli1"><a href="${pageContext.request.contextPath}/user/login.jsp">登录</a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
        </c:when>
        <c:otherwise>
          <li class="uli1"><a href="#">${user.username}欢迎您！</a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/hopeList.do" title="收藏">
            <img src="${pageContext.request.contextPath}/images/heart.jpg" width="18px" height="18px"/>
          </a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/myOrders.do">我的订单</a></li>
          <li class="uli1"><a href="${pageContext.request.contextPath}/addCart.do">我的购物车</a></li>
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
<div class="container cart" style="width: 80%;margin: auto">
  <div class="span24">
    <div class="step step1">
      <ul>
        <li  class="current"></li>
        <li style="line-height:60px; font-size:15px; font-weight:bold;">生成订单成功!</li>
      </ul>
    </div>
    <table>
      <tbody>
      <tr>
        <th>图片</th>
        <th>商品</th>
        <th>价格</th>
        <th>数量</th>
        <th>小计</th>
      </tr>
      <c:forEach var="o" items="${orders.orderitemList}">
        <tr>
          <td width="60">
            <input type="hidden" name="id" value="22"/>
            <img src="${pageContext.request.contextPath}/${o.product.image}"/>
          </td>
          <td>
            <a target="_blank">${o.product.pname}</a>
          </td>
          <td>
              ${o.product.price}
          </td>
          <td class="quantity" width="60">
              ${o.count}
          </td>
          <td width="140">
            <span class="subtotal">￥${o.price}</span>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
    <dl id="giftItems" class="hidden" style="display: none;">
    </dl>
    <div class="total">
      <em id="promotion"></em>
      商品金额: <strong id="effectivePrice">￥${orders.total}元</strong>
    </div>
    <form id="orderForm" action="${pageContext.request.contextPath}/payOrder.do" method="post" onsubmit="return checkForm();">
      <input type="hidden" name="oid" value="${orders.oid}"/>
      <div class="span24">
        <hr />
        <p style="width: 100%">
          <span style="margin-left: 30px"> 收货地址：<input name="addr" type="text"  style="width:200px;height:30px;"/></span>
          <span style="margin-left: 50px">收货人：<input name="username" type="text"  style="width:150px;height:30px;" /></span>
          <span style="margin-left: 50px">联系方式：<input name="phone" type="text" style="width:150px;height:30px;" /></span>

          <a href="javascript:document.getElementById('orderForm').submit();" style="position:relative;right: -100px;">
            <img src="${pageContext.request.contextPath}/images/buy.png" width="200" height="100" border="0" />
          </a>
        </p>
      </div>
    </form>
  </div>
</div>
<%@ include file="bottom.jsp" %>
</body>
</html>
