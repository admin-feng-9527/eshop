<%--
  Created by IntelliJ IDEA.
  author: Jsonor
  date: 2018/5/14 16:36
  description: Description
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>购物车</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
  <%--cart--%>
  <link href="${pageContext.request.contextPath}/css/cart.css" rel="stylesheet" type="text/css"/>

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

<c:if test="${empty list}">
    <div style="text-align: center;">
      <span><img src="${pageContext.request.contextPath}/images/cart.gif" width="100" height="100"/></span>
      <span style="font-size: 20px;">
	                  亲，购物车中空空如也，赶紧去商城看看吧！
	   </span>
    </div>
</c:if>
 <c:if test="${not empty list}">
    <div class="container cart">
      <div class="span24">
        <div class="step step1">

          <span style="line-height:60px; font-size:15px; font-weight:bold;">购物车信息</span>
        </div>
        <table>
          <tbody>
          <tr>
            <th>图片</th>
            <th>商品</th>
            <th>价格</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
          </tr>
          <c:forEach var="c" items="${sessionScope.list}" >
            <tr>
              <td width="60">
                <input type="hidden" name="id" value="22"/>
                <img src="${pageContext.request.contextPath}/${c.product.image}"/>
              </td>
              <td>
                <a target="_blank">${c.product.pname}</a>
              </td>
              <td>
                ￥${c.product.price}
              </td>
              <td class="quantity" width="60" style="text-align: center;">
                  ${c.count}
              </td>
              <td width="140">
                <span class="subtotal">￥${c.product.price*c.count}</span>
              </td>
              <td>
                <a href="${pageContext.request.contextPath}/removeProduct.do?pid=${c.product.pid}" class="delete" onclick="return confirm('确定要删除吗？')"> <img style="width: 32px;height:22px;" src="${pageContext.request.contextPath}/images/delete.jpg"/></a>
              </td>
            </tr>
          </c:forEach>
          </tbody></table>
        <dl id="giftItems" class="hidden" style="display: none;">
        </dl>
        <div class="total">
          <em id="promotion"></em>
          商品金额: <strong id="effectivePrice">￥${total}元</strong>
        </div>
        <div class="bottom">
          <a href="${pageContext.request.contextPath}/clearCart.do" id="clear" class="clear" onclick="return confirm('确定要清空吗？')">清空购物车</a>
          <a href="${pageContext.request.contextPath}/creatOrder.do" id="submit" class="submit" style="background-color: #7CE51E">提交订单</a>
        </div>
      </div>
    </div>
 </c:if>
<%@ include file="bottom.jsp" %>
</body>
</html>
