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
    <title>修改书籍</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="row">
    <div class="col-lg-4">
        <form action="${pageContext.request.contextPath}/book/updateBook" method="post">
            <input type="hidden" name="id" value="${QBooks.id}">
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">书名</span>
                <input type="text" name="title" class="form-control" placeholder="${QBooks.title}"
                       aria-describedby="basic-addon1">
            </div>
            <br>
            <div class="input-group">
                <span class="input-group-addon">价格</span>
                <input type="text" name="price" class="form-control" aria-label="" placeholder="${QBooks.price}">
            </div>
            <br>
            <input type="submit" value="修改" name="submit" class="btn btn-default">
        </form>
    </div>
</div>
</body>
</html>
