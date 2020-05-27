<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Login</title>
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

    <script type="text/javascript" src="${pageContext.request.contextPath}/js/login.js"></script>
    <title>登录</title>
	</head>
	<body>
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
                            <li><a href="${pageContext.request.contextPath}/user/login.jsp">登录</a></li>
                            <li><a href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
                            <li class="hidden-xs"><a href="${pageContext.request.contextPath}/userLogout.do">退出</a></li>
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
		<div class="heading-inner-page" >
			<div class="container">
				<h2>登录</h2>
			</div>
		</div>
		<!-- Login page -->
		<div class="m-t-60">
			<div class="container">
				<div class="bg-img-2 position-left">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<div class="box p-40 p-xs-20 bg-white">
                <div>
                  <a href="${pageContext.request.contextPath}/user/register.jsp" style="margin-left:280px;color:red">
                    还没有账号？点击快速注册>>>
                  </a>
                </div>
                <form id="loginForm" action="${pageContext.request.contextPath}/login.do" onsubmit="return check();" method="post" novalidate="novalidate">
                  <div class="form-group">
                    <label class="control-label">用户名：</label>
                    <input type="text" name="username" maxlength="6" placeholder="用户名" id="username" class="form-control form-item">
                  </div>
                  <div class="form-group m-t-30">
                    <label class="control-label" >密码：</label>
                    <input type="password" name="password" maxlength="6" placeholder="密码" id="password" class="form-control form-item">

                  </div>
                  <div class="form-group m-t-30">
                    <label class="control-label" >验证码：</label>
                    <input type="text"  id="validatecode" name="validatecode" placeholder="验证码"  class="text captcha" maxlength="10" autocomplete="off">
                    <img id="validateimage" class="captchaImage" src="${pageContext.request.contextPath}/getCode.do" onclick="changecode(this)" title="点击更换验证码"/>
                    <span id="c" style="color:red;font-weight:bold;">${codeMsg}</span>
                  </div>
                  <%--<button type="submit" class="btn ht-btn bg-6">登录</button>--%>
                  <input type="submit" class="btn ht-btn bg-6" value="登录">
                </form>
							</div>
						</div>
					 </div>
				 </div>
			</div>
		</div>
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

<script>
  function changecode(obj) {
    obj.src= "${pageContext.request.contextPath}/getCode.do?a=" + new Date().getTime();
  }
</script>
</html>

