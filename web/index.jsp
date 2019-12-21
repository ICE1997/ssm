<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<%
    String context = pageContext.getRequest().getServletContext().getContextPath();
%>
<h1>登录</h1>
<hr>
<form action="<%=context%>/login" method="post">
    <input type="text" placeholder="用户名" name="username"><br/>
    <input type="password" placeholder="密码" name="password"> <br/>
    <input type="submit" value="登录">
</form>
</body>
</html>