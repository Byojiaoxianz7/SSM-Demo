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
    <title>新增书籍</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="row">
    <div class="col-lg-4">
        <form action="${pageContext.request.contextPath}/book/addBook" method="post">
            <!-- name 必须要与实体类的一直 -->
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">书名</span>
                <input type="text" name="title" class="form-control" placeholder="请填写书名"
                       aria-describedby="basic-addon1">
            </div>
            <br>
            <div class="input-group">
                <span class="input-group-addon">价格</span>
                <input type="text" name="price" class="form-control" aria-label="" placeholder="请填写价格">
            </div>
            <br>
            <input type="submit" value="新增" name="submit" class="btn btn-default">
        </form>
    </div>
</div>
</body>
</html>
