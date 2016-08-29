<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Empty Database</title>

    <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
</head>
<body class="all">
<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6 empty emp">
        <h2>The database is empty now! You can add some users.</h2>
    </div>
    <div class="col-md-3"></div>
</div>
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4 emp" >
        <form method="post" action="/userEdit">
            <button class="btn btn-success add">Add new one</button>
        </form>
    </div>
    <div class="col-md-4"></div>
</div>
</body>
</html>

