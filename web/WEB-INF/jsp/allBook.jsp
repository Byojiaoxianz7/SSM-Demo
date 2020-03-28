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
        <c:forEach var="book" items="${books}">
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

</body>
</html>