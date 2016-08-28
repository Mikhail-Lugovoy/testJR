<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <title>Empty Database</title>
</head>
<body class="no-js">
<table width="600px">
    The database is empty now! You can add some users.
    <tr>
        <td><b>Name</b></td>
        <td><b>Age</b></td>
        <td><b>Status</b></td>
        <td><b>Date</b></td>
    </tr>

    <tr>
        <td colspan="5">
            <form method="post" action="/userEdit">
                <input type="submit" value="Add new one">
            </form>
        </td>
    </tr>


    <tr>
    </tr>
</table>
</body>
</html>

