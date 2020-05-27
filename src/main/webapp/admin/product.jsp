<%--
  Created by IntelliJ IDEA.
  author: Jsonor
  date: 2018/5/31 14:49
  description: Description
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
  <title>商品管理</title>
  <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
  <script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body style="background:url('${pageContext.request.contextPath}/images/bj6.jpg')">

<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    选择功能
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    <li><a href="${pageContext.request.contextPath}/findAllUser.do">用户管理</a></li>
    <li><a href="${pageContext.request.contextPath}/findAllProduct.do">商品管理</a></li>
    <li><a href="${pageContext.request.contextPath}/orders.do">订单管理</a></li>
    <li><a href="${pageContext.request.contextPath}/category.do">类别管理</a></li>
  </ul>
</div>

<div style="width:50%;height: 30%;margin: 0px auto">
  <table class="table table-hover">

    <div style="margin-left: 38%;font-size: 20px">
      <strong>产品列表</strong>
    </div>
    </tr>
    <tr>
      <th>产品编号</th>
      <th>产品名</th>
      <th>价钱</th>
      <th>图片</th>
      <th>描述</th>
      <th>所属一级列表</th>
      <th>操作</th>
    </tr>
    <c:forEach items="${plist}" var="p" varStatus="status">
      <tr>
        <td>${p.pid}</td>
        <td>${p.pname}</td>
        <td>${p.price}</td>
        <td><img src="${pageContext.request.contextPath}/${p.image}" alt="image" height="50px" ></td>
        <td>${p.pdesc}</td>
        <td>${p.cid}</td>
        <td>
          <a href="${pageContext.request.contextPath}/editor.do?pid=${p.pid}"> 修改</a>
          |
          <a href="${pageContext.request.contextPath}/deleteProduct.do?pid=${p.pid}">删除</a>
        </td>
      </tr>
    </c:forEach>
  </table>
  <button>
 <a href="${pageContext.request.contextPath}/admin/add.jsp">添加商品</a>
  </button>
</div>
<div style="margin-top:10%; position: relative; top:450px;">
  <nav aria-label="Page navigation" class="nav_fen" >
    <ul class="pagination" style="margin-left: 35%;">
      <c:if test="${page.isFirstPage == true}">
        <li class="disabled">
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=0" aria-label="Previous">
            <span aria-hidden="true">首页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isFirstPage != true}">
        <li>
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=0" aria-label="Previous">
            <span aria-hidden="true">首页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isFirstPage == true}">
        <li class="disabled">
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.prePage}" aria-label="Previous">
            <span aria-hidden="true">上一页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isFirstPage != true}">
        <li>
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.prePage}" aria-label="Previous">
            <span aria-hidden="true">上一页</span>
          </a>
        </li>
      </c:if>
      <c:forEach begin="${page.navigateFirstPage}" end="${page.navigateLastPage}" var="item" step="1">
        <c:if test="${item == page.pageNum}">
          <li class="active">
            <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${item}">${item}</a>
          </li>
        </c:if>
        <c:if test="${item != page.pageNum}">
          <li>
            <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${item}">${item}</a>
          </li>
        </c:if>
      </c:forEach>
      <c:if test="${page.isLastPage == true}">
        <li class="disabled">
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.nextPage}" aria-label="Next">
            <span aria-hidden="true">下一页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isLastPage != true}">
        <li>
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.nextPage}" aria-label="Next">
            <span aria-hidden="true">下一页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isLastPage == true}">
        <li class="disabled">
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.pages}" aria-label="Next">
            <span aria-hidden="true">尾页</span>
          </a>
        </li>
      </c:if>
      <c:if test="${page.isLastPage != true}">
        <li>
          <a href="${pageContext.request.contextPath}/findAllProduct.do?pageNum=${page.pages}" aria-label="Next">
            <span aria-hidden="true">尾页</span>
          </a>
        </li>
      </c:if>
    </ul>
  </nav>
</div>
</body>
</html>
