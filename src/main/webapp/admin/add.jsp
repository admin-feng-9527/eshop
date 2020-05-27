<%--
  Created by IntelliJ IDEA.
  author: Jsonor
  date: 2018/5/31 17:06
  description: Description
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Title</title>
  <meta charset="utf-8">
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
  <form action="${pageContext.request.contextPath}/addProduct.do" enctype="multipart/form-data" method="post" >
    <div style="margin-left: 38%;font-size: 20px">
      <strong>添加商品</strong>
    </div>
    <div class="form-group">
      <label>商品名称</label>
      <input type="text" name="pname" class="form-control" value="">
    </div>
    <div class="form-group">
      <label>商品价钱：</label>
      <input type="text" name="price" class="form-control" value="">
    </div>
    <div class="form-group">
      <label>商品描述：</label>
      <input type="text" name="pdesc" class="form-control" value="">
    </div>
    <div class="form-group">
      <label>商品所属一级分类：</label>
      <input type="text" class="form-control" name="cid" placeholder="填写数字：1：肉类，2：蔬菜，3：水果，4：果汁" value="">
    </div>
    <div class="form-group">
      <label for="exampleInputFile">商品图片：</label>
      <input type="file" id="exampleInputFile" name="image">
    </div>
    <input type="submit" class="btn btn-default" value="确定"/>
  </form>
</div>
</body>
</html>
