<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title> User</title>

    <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
</head>
<body class="all">
<c:if test="${users.size() != 0}">
<div class="row head-table">
    <div class="col-md-4"></div>
    <div class="col-md-1 col" ><h2>Name</h2></div>
    <div class="col-md-1 col"><h2>Age</h2></div>
    <div class="col-md-1 col"><h2>Status</h2></div>
    <div class="col-md-1 col"><h2>Date</h2></div>
    <div class="col-md-4"></div>
</div>
<c:forEach var="user" items="${users}">
<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-1 col"><h3>${user.name}</h3></div>
    <div class="col-md-1 col"><h3>${user.age}</h3></div>
    <div class="col-md-1 col">
        <c:choose>
            <c:when test="${user.admin}">
                <h3> Admin</h3>
            </c:when>
            <c:otherwise>
                <h3>User</h3>
            </c:otherwise>
        </c:choose></div>
    <div class="col-md-1 col"><h3><fmt:formatDate value="${user.currentDate}" pattern="yyyy-MM-dd HH:mm:ss" /></h3></div>
    <div class="col-md-4"></div>
</div>
</c:forEach>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 ret">
            <form method="get" action="/all">
                <button class="btn btn-info return">Return</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>

</c:if>
<c:if test="${users.size() == 0}">
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 empty">
            <h2>Sorry, <mark>${name}</mark> is not on database!</h2>
        </div>
        <div class="col-md-4"></div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-4 ret">
            <form method="get" action="/all">
                <button class="btn btn-info return">Return</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</c:if>
</body>
</html>

