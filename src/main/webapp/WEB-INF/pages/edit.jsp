<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>--%>
<html>
<head>
    <title>Edit User</title>
</head>
<body>
<form:form method="post" action="/userSaveOrUpdate">
    <table>
        <tr>
            <td height="50" width="200">New User Name:</td>
            <td height="30"><input type="text" name="name" value="${user.name}"/></td>
        </tr>
        <tr>
            <td height="50" width="200">New User Age:</td>
            <td height="30"><input type="text" name="age" value="${user.age}"/></td>
        </tr>
        <tr>
            <td height="50" width="200">Decide your prof:</td>
            <td height="30"><input type="text" name="age" value="${user.admin}"/></td>
        </tr>
    </table>
    <table width="200">
        <tr>
            <td width="50" align="center" height="20">
                <input type="hidden" name="id" value=${user.id}>
                <input type="submit" value="Add">
            </td>
            <td width="50" height="20">
                <form method="post" action="/all">
                    <input type="submit" value="Cancel">
                </form>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
