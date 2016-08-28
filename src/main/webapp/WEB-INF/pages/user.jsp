<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title> User</title>
</head>
<body class="no-js">
<c:if test="${user != null}">
<table width="600px">
    <tr>
        <td><b>Name</b></td>
        <td><b>Age</b></td>
        <td><b>Status</b></td>
        <td><b>Date</b></td>
    </tr>
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

            <%--<td>--%>
                <%--<form method="post" action="/userDelete">--%>
                    <%--<input type="hidden" name="id" value=${user.id}>--%>
                    <%--<input type="submit" value="Delete">--%>
                <%--</form>--%>
            <%--</td>--%>
            <%--<td><form method="post" action="/userEdit">--%>
                <%--<input type="hidden" name="id" value=${user.id}>--%>
                <%--<input type="submit" value="Update">--%>
            <%--</form>--%>
            <%--</td>--%>

        </tr>

    <td width="50" height="20">
        <form method="get" action="/all">
            <input type="submit" value="Return">
        </form>
    </td>
    </tr>
</table>
</c:if>
<c:if test="${user == null}">
    Sorry, ${name} is not on database!
    <td width="50" height="20">
        <form method="get" action="/all">
            <input type="submit" value="Return">
        </form>
    </td>
</c:if>
</body>
</html>

