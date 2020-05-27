<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<head>
    <title>注册</title>
		<meta content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Register</title>
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
                  <li><a href="${pageContext.request.contextPath}/user/login.jsp">登录</a></li>
                  <li><a href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
                  <li class="hidden-xs"><a href="${pageContext.request.contextPath}/userLogout.do">退出</a></li>
                </c:when>
                <c:otherwise>
                  <li><a href="login.jsp">${user.username}欢迎您！</a></li>
                  <li><a href="${pageContext.request.contextPath}/user/register.jsp">注册</a></li>
                  <li><a href="${pageContext.request.contextPath}/myOrders.do">我的订单</a></li>
                  <li class="hidden-xs"><a href="${pageContext.request.contextPath}/user/cart.jsp">我的购物车</a></li>
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
		<div class="heading-inner-page">
			<div class="container">
				<h2>注册</h2>
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
                  <a href="${pageContext.request.contextPath}/user/login.jsp" style="margin-left:300px;color:red">
                    已有账号？点击快速登录>>>
                  </a>
                </div>
								<form id="registerForm" action="${pageContext.request.contextPath}/register.do"  method="get" novalidate="novalidate" onsubmit="return checkForm();">
									<div class="form-group">
										<p>用户名：</p>
										<input type="text" name="username" id="username" maxlength="6" placeholder="用户名长度在1-6之间" title="用户名长度在3-12为之间"  class="form-control form-item" onblur="checkUserName()">
									</div>
                                    <div class="form-group">
                                    <p>密码：</p>
										<input type="password" name="password" id="password" maxlength="6" placeholder="密码长度必须为6位"  class="form-control form-item">
                                    </div>
									<div class="form-group">
										<p>邮箱：</p>
										<input type="text" name="email" id="email" placeholder="E-mail"  class="form-control form-item" value="${email}" onblur="checkEmail()">
									</div>
									<div class="form-group">
										<p>电话：</p>
										<input type="text" name="phone" id="phone" placeholder="Phone"  class="form-control form-item" onblur="checkPhone()">
                                    </div>
									<div class="form-group">
                                        <p>地址：</p>
										<input type="text" name="addr" id="addr" placeholder="Addr"  class="form-control form-item">
									</div>

								  <table>
                    <tbody>
                    <tr>
                      <th>&nbsp;

                      </th>
                      <td>
                        <input type="submit" class="submit" value="同意以下协议并注册" style="background:#7CE51E"/>
                      </td>
                    </tr>
                    <tr>
                      <th>&nbsp;

                      </th>
                      <td>
                        注册协议:
                      </td>
                    </tr>
                    <tr>
                      <th>&nbsp;

                      </th>
                      <td>
                        <div id="agreement" class="agreement" style="height: 200px;overflow-y: scroll;">
                          <p>尊敬的用户欢迎您注册成为本网站会员。请用户仔细阅读以下全部内容。如用户不同意本服务条款任意内容，请不要注册或使用本网站服务。如用户通过本网站注册程序，即表示用户与本网站已达成协议，自愿接受本服务条款的所有内容。此后，用户不得以未阅读本服务条款内容作任何形式的抗辩。</p>
                          <p>一、本站服务条款的确认和接纳<br>本网站涉及的各项服务的所有权和运作权归本网站所有。本网站所提供的服务必须按照其发布的服务条款和操作规则严格执行。本服务条款的效力范围及于本网站的一切产品和服务，用户在享受本网站的任何服务时，应当受本服务条款的约束。</p>
                          <p>二、服务简介<br>本网站运用自己的操作系统通过国际互联网络为用户提供各项服务。用户必须:  1. 提供设备，如个人电脑、手机或其他上网设备。 2. 个人上网和支付与此服务有关的费用。</p>
                          <p>三、用户在不得在本网站上发布下列违法信息<br>1. 反对宪法所确定的基本原则的； 2. 危害国家安全，泄露国家秘密，颠覆国家政权，破坏国家统一的； 3. 损害国家荣誉和利益的； 4. 煽动民族仇恨、民族歧视，破坏民族团结的； 5. 破坏国家宗教政策，宣扬邪教和封建迷信的； 6. 散布谣言，扰乱社会秩序，破坏社会稳定的； 7. 散布淫秽、色情、赌博、暴力、凶杀、恐怖或者教唆犯罪的； 8. 侮辱或者诽谤他人，侵害他人合法权益的； 9. 含有法律、行政法规禁止的其他内容的。</p>
                          <p>四、有关个人资料<br>用户同意:  1. 提供及时、详尽及准确的个人资料。 2. 同意接收来自本网站的信息。 3. 不断更新注册资料，符合及时、详尽准确的要求。所有原始键入的资料将引用为注册资料。 4. 本网站不公开用户的姓名、地址、电子邮箱和笔名。除以下情况外:  a) 用户授权本站透露这些信息。 b) 相应的法律及程序要求本站提供用户的个人资料。</p>
                          <p>五、服务条款的修改<br>本网站有权在必要时修改服务条款，一旦条款及服务内容产生变动，本网站将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的本网站信息服务。如果用户继续享用本网站信息服务，则视为接受服务条款的变动。</p>
                          <p>六、用户隐私制度<br>尊重用户个人隐私是本网站的一项基本政策。所以，本网站一定不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在本网站中的非公开内容，除非有法律许可要求或本网站在诚信的基础上认为透露这些信息在以下四种情况是必要的:  1. 遵守有关法律规定，遵从本网站合法服务程序。 2. 保持维护本网站的商标所有权。 3. 在紧急情况下竭力维护用户个人和社会大众的隐私安全。 4. 符合其他相关的要求。</p>
                          <p>七、用户的帐号、密码和安全性<br>用户一旦注册成功，将获得一个密码和用户名。用户需谨慎合理的保存、使用用户名和密码。如果你不保管好自己的帐号和密码安全，将负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。你可随时根据指示改变你的密码。用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通告本网站。   八、 拒绝提供担保 用户明确同意信息服务的使用由用户个人承担风险。本网站不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保，但会在能力范围内，避免出错。</p>
                          <p>九、有限责任<br>如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等本站会尽可能合理地协助处理善后事宜，并努力使客户免受经济损失，同时会尽量避免这种损害的发生。</p>
                          <p>十、用户信息的储存和限制<br>本站有判定用户的行为是否符合国家法律法规规定及本站服务条款权利，如果用户违背本网站服务条款的规定，本网站有权中断对其提供服务的权利。</p>
                          <p>十一、用户管理<br>用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于本站的国家法律、地方法律和国际法律标准的。用户必须遵循:  1. 使用网络服务不作非法用途。 2. 不干扰或混乱网络服务。 3. 遵守所有使用网络服务的网络协议、规定、程序和惯例。 用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。未经许可而非法进入其它电脑系统是禁止的。 若用户的行为不符合以上提到的服务条款，本站将作出独立判断立即取消用户服务帐号。用户需对自己在网上的行为承担法律责任。用户若在本站上散布和传播反动、色情或其它违反国家法律的信息，本站的系统记录有可能作为用户违反法律的证据。</p> <p>十二、通告<br>所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。服务条款的修改、服务变更、或其它重要事件的通告都会以此形式进行。</p> <p>十三、信息内容的所有权<br>本网站定义的信息内容包括: 文字、软件、声音、相片、录象、图表；在广告中全部内容；本网站为用户提供的其它信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在本网站和广告商授权下才能使用这些内容，而不能擅自复制、再造这些内容、或创造与内容有关的派生产品。本站所有的文章版权归原文作者和本站共同所有，任何人需要转载本站的文章，必须征得原文作者或本站授权。</p> <p>十四、法律<br>本协议的订立、执行和解释及争议的解决均应适用中华人民共和国的法律。用户和本网站一致同意服从本网站所在地有管辖权的法院管辖。如发生本网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户的约束力。</p>
                        </div>
                      </td>
                    </tr>
                    </tbody>
                  </table>
								</form>
							</div>
						</div>
					 </div>
				 </div>
			</div>
		</div>
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
								<h5 class="media-heading">客服电话： 0123-456-789</h5>
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

