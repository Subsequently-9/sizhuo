<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/28
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/test/update.do" method="post">
    ID<input type="text" value="${param.id}" name="id"><br>
    用户名<input type="text" value="${param.name}" name="name"><br>
    密码<input type="password" value="${param.password}" name="password"><br>
    <input type="submit" value="修改">
</form>
</body>
</html>
