<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/6/4
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>类别管理</title>
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

<body>
<div style="width:40%;height: 30%;margin: 0px auto">
    <table class="table table-hover">
        <div style="margin-left: 38%;font-size: 20px">
            <strong>类别列表</strong>
        </div>
        <tr>
            <th>列表ID</th>
            <th>名称</th>
            <th>操作</th>
        </tr>
        <c:forEach items="${category}" var="c" >
            <tr>
                <td>${c.cid}</td>
                <td>${c.cname}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/deleteCategory.do?cid=${c.cid}" onclick="return confirm('确定要删除吗？')">删除</a>
                </td>
            </tr>
        </c:forEach>
        <button>
        <a href="${pageContext.request.contextPath}/admin/addCategory.jsp">添加</a>
        </button>
    </table>
</div>
</body>
</html>
