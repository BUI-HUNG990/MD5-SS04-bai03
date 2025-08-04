<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Danh sách danh mục</title>
</head>
<body>
<h2>Danh sách danh mục</h2>

<c:if test="${empty categories}">
    <p>Không có dữ liệu.</p>
</c:if>

<table border="1">
    <tr>
        <th>ID</th>
        <th>Tên danh mục</th>
        <th>Mô tả</th>
        <th>Trạng thái</th>
        <th>Hành động</th>
    </tr>
    <c:forEach var="cate" items="${categories}">
        <tr>
            <td>${cate.id}</td>
            <td>${cate.name}</td>
            <td>${cate.description}</td>
            <td>
                <c:choose>
                    <c:when test="${cate.status}">Hoạt động</c:when>
                    <c:otherwise>Ẩn</c:otherwise>
                </c:choose>
            </td>
            <td>
                <a href="#">Edit</a> | <a href="#">Delete</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
