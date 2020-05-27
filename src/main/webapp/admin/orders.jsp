<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2018/5/31
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<html>
<head>
    <title>订单管理</title>
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
            <strong>订单列表</strong>
        </div>
        </tr>
        <tr>
            <th>订单编号</th>
            <th>价钱</th>
            <th>姓名</th>
            <th>电话</th>
            <th>地址</th>
        </tr>
        <c:forEach items="${orders}" var="o">
            <tr>
                <td>${o.oid}</td>
                <td>${o.total}</td>
                <td>${o.name}</td>
                <td>${o.phone}</td>
                <td>${o.addr}</td>
            </tr>
        </c:forEach>
    </table>
</div>
<div style="margin-top:15%;position: relative; top:150px;">
    <nav aria-label="Page navigation" class="nav_fen" >
        <ul class="pagination" style="margin-left: 35%;">
            <c:if test="${page.isFirstPage == true}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=0" aria-label="Previous">
                        <span aria-hidden="true">首页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isFirstPage != true}">
                <li>
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=0" aria-label="Previous">
                        <span aria-hidden="true">首页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isFirstPage == true}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.prePage}" aria-label="Previous">
                        <span aria-hidden="true">上一页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isFirstPage != true}">
                <li>
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.prePage}" aria-label="Previous">
                        <span aria-hidden="true">上一页</span>
                    </a>
                </li>
            </c:if>
            <c:forEach begin="${page.navigateFirstPage}" end="${page.navigateLastPage}" var="item" step="1">
                <c:if test="${item == page.pageNum}">
                    <li class="active">
                        <a href="${pageContext.request.contextPath}/orders.do?pageNum=${item}">${item}</a>
                    </li>
                </c:if>
                <c:if test="${item != page.pageNum}">
                    <li>
                        <a href="${pageContext.request.contextPath}/orders.do?pageNum=${item}">${item}</a>
                    </li>
                </c:if>
            </c:forEach>
            <c:if test="${page.isLastPage == true}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.nextPage}" aria-label="Next">
                        <span aria-hidden="true">下一页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isLastPage != true}">
                <li>
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.nextPage}" aria-label="Next">
                        <span aria-hidden="true">下一页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isLastPage == true}">
                <li class="disabled">
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.pages}" aria-label="Next">
                        <span aria-hidden="true">尾页</span>
                    </a>
                </li>
            </c:if>
            <c:if test="${page.isLastPage != true}">
                <li>
                    <a href="${pageContext.request.contextPath}/orders.do?pageNum=${page.pages}" aria-label="Next">
                        <span aria-hidden="true">尾页</span>
                    </a>
                </li>
            </c:if>
        </ul>
    </nav>
</div>
</body>
</html>