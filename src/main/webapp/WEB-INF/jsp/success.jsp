<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/7/26
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>注册成功</title>
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script></head>
<body>
 <h1>用户列表</h1>
 <table width="100%" border="1" style="border-collapse: collapse;text-align: center">
     <tr>
         <th>ID</th>
         <th>用户名</th>
         <th>密码</th>
         <th>操作</th>
     </tr>

     <c:forEach items="${list}" var="list">
          <tr>
              <td class="id">${list.id}</td>
              <td class="na">${list.name}</td>
              <td class="pa">${list.password}</td>
              <td>
                  <%--<input class="de" type="button" value="删除" onclick="del(this)">
                  <input class="up" type="button" value="修改" onclick="up(this)">--%>
                  <a href="/test/d.do?id=${list.id}">删除</a>
                  <a href="/test/u.do?id=${list.id}&name=${list.name}&password=${list.password}">修改</a>
              </td>
          </tr>
     </c:forEach>
 </table>
<script type="text/javascript">

    function del(that){
            var i=$(that).parent().parent().find(".id").text();
            $.ajax({
                url:'de.do',
                data:{id:i},
                success:function (data) {
                    if (data==="ok"){
                        window.location.href="demo01.do";
                    }
                }
            })
    }
    
    function up(that) {
        var i=$(that).parent().parent().find(".id").text();
        var na=$(that).parent().parent().find(".na").text();
        var pa=$(that).parent().parent().find(".pa").text();
        $.ajax({
            url:'up.do',
            success:function (data) {
                if (data==="ok"){
                    window.location.href="/update.jsp?id="+i+"&name="+na+"&password="+pa;
                }
            }
        })
    }

</script>
</body>
</html>
