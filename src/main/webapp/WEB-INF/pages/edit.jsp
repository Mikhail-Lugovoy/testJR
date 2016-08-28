<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<form:form method="post" action="/userSaveOrUpdate" modelAttribute="dto">
    <table>
        <tr>
            <td height="50" width="200">New User Name:</td>
            <td height="30"><input type="text" name="name" value="${dto.name}" required/></td>
        </tr>
        <tr>
            <td height="50" width="200">New User Age:</td>
            <td height="30"><input type="text" name="age" value="${dto.age}" pattern="[0-9]{1,3}" required/></td>
        </tr>
        <tr>
            <td height="50" width="200">Decide your prof:</td>
            <c:choose>
                <c:when test="${dto.isAdmin.equals('true')}">
                    <td>
                    <input type="radio" name="isAdmin" value="true" required checked>Admin<Br>
                    <input type="radio" name="isAdmin" value="false" required>User<Br>
                    </td>
                </c:when>
                <c:otherwise>
                    <td>
                        <input type="radio" name="isAdmin" value="true" required >Admin<Br>
                        <input type="radio" name="isAdmin" value="false" required checked>User<Br>
                    </td>
                </c:otherwise>
            </c:choose>

        </tr>
    </table>
    <table width="200">

        <tr>
            <td width="50" align="center" height="20">
                <input type="hidden" name="id" value=${dto.id}>
                <c:if test="${dto.id == null}">
                    <input type="submit" value="Add">
                </c:if>
                <c:if test="${dto.id != null}">
                    <input type="submit" value="Edit">
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
<td width="50" height="20">
    <form method="get" action="/all">
        <input type="submit" value="Cancel">
    </form>
</td>
</body>
</html>
