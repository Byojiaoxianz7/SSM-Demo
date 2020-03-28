<%--
  Created by IntelliJ IDEA.
  User: byoji
  Date: 2020/3/28
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="${pageContext.request.contextPath}/book/addBook" method="post">
    <!-- name 必须要与实体类的一直 -->
    书籍名称： <input type="text" name="title"/><br>
    书籍价格： <input type="text" name="price"><br>
    <input type="submit" name="bookSubmit" value="新增"/>
</form>
</body>
</html>
