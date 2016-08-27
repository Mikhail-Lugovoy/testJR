<%--
  Created by IntelliJ IDEA.
  User: milu
  Date: 27.08.16
  Time: 12:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
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
    </tr>
    <c:forEach var="department" items="${departments}">
        <tr>
            <td>${department.name} (v.${department.version})</td>
            <td>
                <form method="post" action="/depDelete">
                    <input type="hidden" name="id" value=${department.id}>
                    <input type="submit" value="Delete">
                </form>
            </td>
            <td><form method="post" action="/depEdit">
                <input type="hidden" name="id" value=${department.id}>
                <input type="submit" value="Update">
            </form>
            </td>


        </tr>
    </c:forEach>
    <tr>
        <td colspan="5">
            <form method="post" action="/depEdit">
                <input type="submit" value="Add new one">
            </form>
        </td>
    </tr>
</table>
</body>
</html>
</body>
</html>
