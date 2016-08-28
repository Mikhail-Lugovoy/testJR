<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>All Users</title>
</head>
<body class="no-js">
<table width="600px">
    <tr>
        <td><b>Name</b></td>
        <td><b>Age</b></td>
        <td><b>Status</b></td>
        <td><b>Date</b></td>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name} </td>
            <td>${user.age} </td>
            <c:choose>
                <c:when test="${user.admin}">
                    <td>Admin</td>
                </c:when>
                <c:otherwise>
                    <td>User</td>
                </c:otherwise>
            </c:choose>
            <td>
                <fmt:formatDate value="${user.currentDate}" pattern="yyyy-MM-dd HH:mm:ss" />

            </td>

            <td>
                <form method="post" action="/userDelete">
                    <input type="hidden" name="id" value=${user.id}>
                    <input type="submit" value="Delete">
                </form>
            </td>
            <td><form method="post" action="/userEdit">
                <input type="hidden" name="id" value=${user.id}>
                <input type="submit" value="Update">
            </form>
            </td>


        </tr>
    </c:forEach>
    <tr>
        <td colspan="5">
            <form method="post" action="/userEdit">
                <input type="submit" value="Add new one">
            </form>
        </td>
    </tr>
</table>
</body>
</html>

