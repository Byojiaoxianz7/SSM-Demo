<%--
  Created by IntelliJ IDEA.
  User: byoji
  Date: 2020/3/28
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<form action="${pageContext.request.contextPath}/book/updateBook" method="post">
    <!-- name 必须要与实体类的一致 -->

    <!-- 前端传递隐藏域
        这里不传 id 是没有办法修改的，看 sql 语句就知道了
     -->
    <input type="hidden" name="id" value="${QBooks.id}">
    书籍名称： <input type="text" name="title" value="${QBooks.title}"/><br>
    书籍价格： <input type="text" name="price" value="${QBooks.price}"><br>
    <input type="submit" name="bookSubmit" value="修改"/>
</form>
</form>
</body>
</html>
