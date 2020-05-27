<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/30
  Time: 21:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>后台</title>
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

<div style="width:40%;height: 30%;margin: 0px auto">
<table class="table table-hover">
        <div style="margin-left: 38%;font-size: 20px">
            <strong>用户列表</strong>
        </div>
    <tr>
        <th>用户名</th>
        <th>密码</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>地址</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="u" varStatus="status">
    <tr>
        <td>${u.username}</td>
        <td>${u.password}</td>
        <td>${u.phone}</td>
        <td>${u.email}</td>
        <td>${u.addr}</td>
        <td>
            <a href="${pageContext.request.contextPath}/deleteUser.do?uid=${u.uid}" onclick="return confirm('确定要删除吗？')">
            删除</a>
        </td>
    </tr>
    </c:forEach>
</table>
</div>
</body>
</html>
