<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>商品详情</title>
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
	<!-- Magnific-popup -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/magnific-popup/magnific-popup.css">
	<!-- Style -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" media="screen">
	<!-- Fw -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fw.css" media="screen">

	<style>
		.amount-cont-bar{width:120px;+width:124px;height: 30px;line-height: 30px;}
	.amount-cont-bar a{width: 30px;height: 30px;font-weight: bold;}
	.amount-cont-bar a,.amount-cont-bar input{font-size: 21px;font-family: "宋体";text-align: center;color: #666;}
	.amount-cont-bar input{width: 50px;height: 27px;line-height: 27px;font-size: 14px;font-family: "Microsoft yahei";position: relative;top: -1px;+top: -2px;border: none;outline: none;}
	.amount-cont-bar a:hover{color: #f00;font-weight: bold;}
	.amount-decrease-btn,.amount-add-btn{+position: relative;+top: -5px;}
	.amount-add-btn{position: relative;left: 1px;}
	.td-amount .amount-bar .amount-cont-bar{margin-left:68px;}
	.td-amount .amount-bar .sl_xz{width:122px;height:32px;line-height:32px; text-align:center;float:right;}
	</style>
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
					<c:choose>
						<c:when test="${empty user}">
							<li><a title="登录" href="${pageContext.request.contextPath}/user/login.jsp">登录</a></li>
							<li><a  title="注册"  href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
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
									<li style="float:left;margin-top: 17px;font-size:20px"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></li>
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
</div>
<div class="heading-inner-page">
	<div class="container">
		<h2>商品详情</h2>
	</div>
</div>
<!-- Product -->
<section class="m-t-30">
	<div class="container">
		<div class="row">
			<!-- Product image gallery -->
			<div class="col-sm-6 col-md-7">
				<ul class="thumbnails p-0">
					<li>
						<a class="thumbnail img-large image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" alt="iPhone" style="border:3px solid #D8D8D8;" >
						</a>
					</li>
					<li class="image-additional">
						<a class="thumbnail image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" title="iPhone" alt="iPhone" style="border:3px solid #D8D8D8;">
						</a>
					</li>
					<li class="image-additional">
						<a class="thumbnail image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" title="iPhone" alt="iPhone" style="border:3px solid #D8D8D8;">
						</a>
					</li>
					<li class="image-additional">
						<a class="thumbnail image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" title="iPhone" alt="iPhone" style="border:3px solid #D8D8D8;">
						</a>
					</li>
					<li class="image-additional">
						<a class="thumbnail image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" title="iPhone" alt="iPhone" style="border:3px solid #D8D8D8;">
						</a>
					</li>
					<li class="image-additional">
						<a class="thumbnail image-zoom" href="${pageContext.request.contextPath}/${p.image}" title="iPhone">
							<img src="${pageContext.request.contextPath}/${p.image}" title="iPhone" alt="iPhone" style="border:3px solid #D8D8D8;">
						</a>
					</li>
				</ul>
			</div>
			<form id="cartForm" action="${pageContext.request.contextPath}/addCart.do" method="post">
				<!-- Product decr -->

				<div class="col-sm-6 col-md-5">
					<div class="product-pare m-t-xs-60">
						<h1>${p.pname}</h1><input type="hidden" value="${p.pid}" name="pid">
						<ul class="list-unstyled m-b-20">
							<li><span>商品描述：</span>${p.pdesc}</li>
						</ul>
						<p class="product-price">${p.price}</p>
						<div class="clearfix amount-bar">
							<div class="fl amount-cont-bar line-solid">
								<a id="amount-decrease-btn" class="line-solid-r amount-decrease-btn" href="javascript:;">-</a>
								<input id="amount-total-num" name="count" type="text" value="1" readonly="readonly" />
								<a id="amount-add-btn" class="line-solid-l amount-add-btn" href="javascript:;">+</a>
							</div>
							<div class="clearfix"></div>
						<button class="btn ht-btn bg-3 m-t-0" >添加到购物车</button>
					</div>
				</div>
				</div>
			</form>
			<div class="row m-t-30">
				<div class="col-sm-9">
					<div class="p-30 bore">
						<h3 class="title">商品描述</h3>
						<p>${p.pdesc}</p>
						<h5>营养成分</h5>
						<ul class="list-border width-auto-xs">
							<li>Calories: 46</li>
							<li>Carbohydrates: 9g</li>
							<li>Dietary fiber: 3g</li>
							<li>Protein: 1g</li>
							<li>Sugars: 6g</li>
							<li>Vitamin A: 93% DV</li>
							<li>Vitamin C: 317%</li>
							<li>Vitamin E: 12%</li>
							<li>Vitamin K: 9%</li>
							<li>Thiamin: 6%</li>
							<li>Vitamin B6: 22%</li>
							<li>Folate: 17%</li>
							<li>Manganese: 8%</li>
							<li>Potassium: 9%</li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="banner bg-img-13">
						<div class="caption text-center">
							<h2 class="heading-size-3 f-bold">100%</h2>
							<h3 class="heading-size-5 f-normal">有机物</h3>
							<a href="#" class="btn ht-btn ht-btn-bg-2">了解更多</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Product relaed -->
<section>
	<div class="container">
		<h3 class="title">其他产品</h3>
		<div class="row product-bor">
			<div class="owl" data-items="4" data-itemsDesktop="4" data-itemsDesktopSmall="3" data-itemsTablet="2" data-itemsMobile="1" data-transitionstyle="backslide" data-singleItem="false" data-autoplay="false" data-pag="false" data-buttons="true">
				<div class="col-sm-12">
					<!-- Product item -->
					<div class="container text-center m-t-30">

						<div class="ht-tabs ht-tabs-product text-center">
							<!-- Tab panes -->
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active" id="tab-description">
									<div class="row">

										<c:forEach items="${products}" var="p">
											<div class="col-sm-6 col-md-4 col-lg-3">
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
															<a href="${pageContext.request.contextPath}/hope.do?pid=${p.pid}" class="wishlist_btn"><i class="fa fa-heart-o"></i></a>
															<a href="${pageContext.request.contextPath}/addCart.do?pid=${p.pid}&count=1">添加到购物车</a>
															<a href="#" class="compare_btn"><i class="fa fa-exchange"></i></a>
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
						<h5 class="media-heading">Support 24/7: 0123-456-789</h5>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="media ht-media">
					<div class="media-left">
						<i class="fa fa-truck bg-2"></i>
					</div>
					<div class="media-body">
						<h5 class="media-heading">Free shipping on all orders</h5>
					</div>
				</div>
			</div>
			<div class="col-sm-6 col-md-4">
				<div class="media ht-media">
					<div class="media-left">
						<i class="fa fa-undo bg-3"></i>
					</div>
					<div class="media-body">
						<h5 class="media-heading">100% money back guarantee</h5>
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

<script>
	oAdd_btn = $("#amount-add-btn"),
    oTotal_val = $("#amount-total-num");
//加的效果
oAdd_btn.click(function(){
    var n=oTotal_val.val();
    var num=parseInt(n)+1;
    if(num==0){ return;}

    oTotal_val.val(num);
});
//减的效果
oJian_btn.click(function(){
    var n=oTotal_val.val();
    var num=parseInt(n)-1;
    if(num==0){ return}

    oTotal_val.val(num);
});
</script>
</body>
</html>

