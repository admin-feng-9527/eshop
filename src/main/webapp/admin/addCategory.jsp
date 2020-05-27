<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/6/4
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>添加类别</title>
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
    <form action="${pageContext.request.contextPath}/addCategory.do">
        <div style="margin-left: 38%;font-size: 20px">
            <strong>添加类别</strong>
        </div>
        <div class="form-group">
            <label >名称</label>
            <input type="text" name="cname" class="form-control" >
        </div>
        <input type="submit" class="btn btn-default"  value="确定" />
    </form>
</div>
</body>
</html>

