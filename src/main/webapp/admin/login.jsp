<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <title>后台管理中心</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="${root}/css/general.css" rel="stylesheet" type="text/css" />
    <link href="${root}/css/main.css" rel="stylesheet" type="text/css" />
    <link rel="shortcut icon" href="${root}/images/tit.ico" type="image/x-icon" />

    <style type="text/css">
        body {
            color: white;
        }
        .errorMessage{
            list-style:none;
        }
    </style>
    <script type="text/javascript">
        //使用js对提交的数据做判断，如果为空则弹出相应的消息
        function validate() {
            var username = document.getElementById("username").value;
            if (username == null || username == ""){
                alert("用户名不能为空");
                return false;
            }

            var password = document.getElementById("password").value;
            if (password == null || password ==""){
                alert("密码不能为空");
                return false;
            }
        }
    </script>
</head>

<body style="background: #278296">
<h1 style="text-align:center;">欢迎来到后台管理中心</h1>
<font color="red" style="text-align:center;"></font>

<form id="admin_login" name="theForm" action="${root}/adminLogin.do" target="_parent" method="post" onsubmit="return validate()">
    <table class="wwFormTable">

        <table cellspacing="0" cellpadding="0" style="margin-top: 20px" align="center" border="0">

            <tr>
                <td><img src="${root}/images/login.png" width="300" height="300" border="0" alt="SHOP" /></td>
                <td style="position: relative;left:-50px;">
                    <table>
                        <tr>
                            <td></td>
                        </tr>

                        <tr>
                            <th>管理员姓名：</th>
                            <td><input type="text" id="username" name="username" value="" /></td>
                        </tr>
                        <tr>
                            <th>管理员密码：</th>
                            <td><input type="password" id="password" name="password" /></td>
                        </tr>

                        <tr>
                            <td colspan="2" align="right"><input type="submit" value="进入后台管理中心" style="border-radius: 10px;margin-top: 5px"/></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <input type="hidden" name="act" value="signin" />
    </table></form>
</body>
</html>
