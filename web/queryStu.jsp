<%--
  Created by IntelliJ IDEA.
  User: mason
  Date: 2019/12/21
  Time: 2:49 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询学生</title>
</head>
<body>
<h1>查询学生</h1>
<a href="queryClz.jsp">查询班级</a>
<hr>
<%
    String context = pageContext.getRequest().getServletContext().getContextPath();
%>
<form action="<%=context%>/queryStu" method="get">
    <input type="text" placeholder="学生学号" name="stuNum"><span>不填查询所有学生</span><br/>
    <input type="text" placeholder="课程号" name="courseNum"><span>不填查询所有课程</span><br/>
    <input type="submit" value="提交">
    <table border="1px" align="center">
        <tr>
            <th>学号</th>
            <th>姓名</th>
            <th>班级</th>
            <th>总分排名</th>
            <th>课程</th>
            <th>分数</th>
            <th>排名</th>
        </tr>
        <tr>
            <td>2017211600</td>
            <td>何福生</td>
            <td>计科17</td>
            <td>1</td>
            <td>计算机网络</td>
            <td>100</td>
            <td>1</td>
        </tr>
    </table>
</form>
</body>
</html>
