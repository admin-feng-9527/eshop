<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <script type="text/javascript">
        /*当页面加载完成后，自动请求index*/
        window.onload = function () {
            window.location="${pageContext.request.contextPath}/index.do";
        }
    </script>
</head>
<body>
<%--<jsp:forward page="${pageContext.request.contextPath}/index"></jsp:forward>--%>
</body>
</html>
