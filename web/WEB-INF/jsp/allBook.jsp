<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<body>
<div>
    <a href="${pageContext.request.contextPath}/book/toAddBook">新增书籍</a>
</div>
<div>
    <table>
        <tr>
            <th>书籍编号</th>
            <th>书籍名称</th>
            <th>书籍价格</th>
        </tr>
        <tbody>
        <c:forEach var="book" items="${pageInfo.list}">
            <tr>
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${book.price}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/book/toUpdateBook?id=${book.id}">修改</a>
                    &nbsp; | &nbsp;
                    <a href="${pageContext.request.contextPath}/book/deleteBook?id=${book.id}">删除</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div>
    <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateFirstPage}">首页</a>
    <c:if test="${pageInfo.hasPreviousPage}">
        <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum-1}">上一页</a>
    </c:if>
    <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum">
        <c:if test="${pageNum == pageInfo.pageNum}">
            <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageNum}">${pageNum}</a>
        </c:if>
    </c:forEach>
    <c:if test="${pageInfo.hasNextPage}">
        <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.pageNum+1}">下一页</a>
    </c:if>
    <a href="${pageContext.request.contextPath}/book/allBook?startPage=${pageInfo.navigateLastPage}">尾页</a>
</div>
</body>
</html>