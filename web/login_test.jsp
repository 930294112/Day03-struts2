<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/12
  Time: 下午5:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录拦截器</title>
</head>
<body>
<h4>如果没有点击login,当点击add和update是跳转到login.jsp界面</h4>
<h4>如果点击login,当点击add和update或转到success.jsp界面</h4>
<a href="/inter/add_UI.action">add_UI添加</a><br>
<a href="/inter/update_UI.action">update_UI修改</a><br>
<a href="/inter/login_UI.action">login_UI登录</a><br>


</body>
</html>
