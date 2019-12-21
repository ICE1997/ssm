<%--
  Created by IntelliJ IDEA.
  User: mason
  Date: 2019/12/21
  Time: 2:48 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询班级</title>
</head>
<body>
<%
    String context = pageContext.getRequest().getServletContext().getContextPath();
%>
<h1>查询班级</h1>
<a href="queryStu.jsp">查询学生</a>
<hr>
<form action="<%=context%>/queryClz" method="get">
    <input type="text" placeholder="班级号" name="clzNum"><span>不填查询所有班级</span><br/>
    <input type="text" placeholder="课程号" name="courseNum"><span>不填查询所有课程</span><br/>
    <input type="submit" value="提交">
</form>
<table border="1px" align="center">
    <tr>
        <th>班级</th>
        <th>总分排名</th>
        <th>课程</th>
        <th>排名</th>
    </tr>
    <tr>
        <td>计科17</td>
        <td>1</td>
        <td>计算机网络</td>
        <td>1</td>
    </tr>
</table>
</body>
</html>
