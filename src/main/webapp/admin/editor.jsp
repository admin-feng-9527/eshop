<%--
  Created by IntelliJ IDEA.
  author: Jsonor
  date: 2018/5/31 15:44
  description: Description
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
  <title>Title</title>
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

<div style="height: 600px;width: 400px;margin-left:50%;position: absolute;left:-200px; margin-top: 3%">
  <div style="margin-left: 38%;font-size: 20px">
    <strong>修改商品</strong>
  </div>
  <form action="${pageContext.request.contextPath}/productEdit.do">
    <input type="hidden" name="pid" value="${p.pid}">
    <div class="form-group">
      <label >产品名</label>
      <input type="text" class="form-control" name="pname" value="${p.pname}">
    </div>
    <div class="form-group">
      <label>价钱</label>
      <input type="text" class="form-control" name="price" value="${p.price}">
    </div>
    <div class="form-group">
      <label>描述</label>
      <input type="text" class="form-control" name="pdesc" value="${p.pdesc}">
    </div>
    <div class="form-group">
      <label>所属一级列表</label>
      <input type="text" class="form-control" name="cid" value="${p.cid}">
    </div>
    <button type="submit" class="btn btn-default">提交</button>
  </form>
</div>
</body>
</html>
