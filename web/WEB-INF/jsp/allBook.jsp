<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>书籍列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<!-- 书籍列表 -->
<div class="container" style="text-align: center;">
    <div class="row">
        <div class="col-md-1 column">
            <a class="btn btn-success" href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
        </div>
<%--        <div class="col-md-3 column">--%>
<%--            <form action="${pageContext.request.contextPath}/book/queryBook" method="">--%>
<%--                <div class="input-group">--%>
<%--                    <input type="text" name="bookName" class="form-control" placeholder="请输入要查找的书籍">--%>
<%--                    <span class="input-group-btn">--%>
<%--                        <button class="btn btn-primary" type="submit">查询</button>--%>
<%--                        </span>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>

        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>编号</th>
                        <th>书名</th>
                        <th>价格</th>
                        <th>操作</th>
                    </tr>
                    <tbody>
                    <c:forEach var="book" items="${pageInfo.list}">
                        <tr>
                            <td>${book.id}</td>
                            <td>${book.title}</td>
                            <td>${book.price}</td>
                            <td>
                                <a class="btn btn-success"
                                   href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.id}">修改</a>
                                <a class="btn btn-danger"
                                   href="${pageContext.request.contextPath}/book/deleteBook?id=${book.id}">删除</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- 分页 -->
<nav aria-label="Page navigation" style="text-align: center">
    <ul class="pagination" >
        <li>
            <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateFirstPage}">首页</a>
        </li>
        <li>
            <c:if test="${pageInfo.hasPreviousPage}">
                <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum-1}"
                   aria-label="Previous">
                    <span aria-hidden="true">上一页</span>
                </a>
            </c:if>
        </li>
        <li>
            <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">
                <c:if test="${pageNum == pageInfo.pageNum}">
                    <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageNum}">${pageNum}</a>
                </c:if>
            </c:forEach>
        </li>
        <li>
            <c:if test="${pageInfo.hasNextPage}">
                <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum+1}"
                   aria-label="Next">
                    <span aria-hidden="true">下一页</span>
                </a>
            </c:if>
        </li>
        <li>
            <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateLastPage}">尾页</a>
        </li>
    </ul>
</nav>
</body>
</html>