
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>--%>
<head>
    <title>All Users</title>
</head>
<body class="no-js">
<%--<div align="right"><strong>${email}</strong></div>--%>
<table width="600px">
    <tr>
        <td><b>Name</b></td>
        <td><b>Age</b></td>
        <td><b>User/Admin</b></td>
    </tr>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.name} </td>
            <td>${user.age} </td>
            <%--<td>${user.admin} </td>--%>
            <c:if test="${user.admin == true} ">
                <td>Admin </td>
            </c:if>
            <c:if test="${user.admin == false} ">
                <td>User </td>
            </c:if>

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

