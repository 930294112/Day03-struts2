<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/10/12
  Time: 上午9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/xml/login.action" method="post">
    用户名:<input type="text" name="username"><br>
    密码:<input type="password" name="password"><br>
    <input type="submit" value="登录">
    <input type="reset" value="重置">
</form>

<a href="${pageContext.request.contextPath}/findAll.action">测试@SkipValidate注解</a><br>
<a href="${pageContext.request.contextPath}/xml/register.action">测试xml配置文件实现输入的验证</a><br>
<%--显示验证失败的错误信息--%>

<%--遍历属性错误集合中的所有错误信息--%>
<s:fielderror></s:fielderror>

<%--输出某个属性的错误信息--%>
<%--<s:fielderror fieldName="username_error"></s:fielderror>--%>
<%--<s:fielderror fieldName="password_error"></s:fielderror>--%>
<%--输出actionerror集合中的错误信息--%>
<s:actionerror></s:actionerror>
</body>
</html>
