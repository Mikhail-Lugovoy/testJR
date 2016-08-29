<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Users</title>

    <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
</head>
<body class="all">

<div class="row head-table">
    <div class="col-md-3"></div>
    <div class="col-md-1 col" ><h2>Name</h2></div>
    <div class="col-md-1 col"><h2>Age</h2></div>
    <div class="col-md-1 col"><h2>Status</h2></div>
    <div class="col-md-1 col"><h2>Date</h2></div>
    <div class="col-md-1"></div>
    <div class="col-md-1"></div>
    <div class="col-md-3"></div>
</div>
<c:forEach var="user" items="${users}">
<div class="row">
    <div class="col-md-3"></div>
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
    <div class="col-md-1 col">
        <form method="post" action="/userDelete">
        <input type="hidden" name="id" value=${user.id}>
        <button class="btn btn-danger bt">Delete</button>
        </form>
    </div>
    <div class="col-md-1 col">
        <form method="post" action="/userEdit">
            <input type="hidden" name="id" value=${user.id}>
            <button class="btn btn-warning bt">Update</button>
        </form>
    </div>
    <div class="col-md-3"></div>
</div>
</c:forEach>

<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-2 col" >
        <form method="post" action="/userEdit">
            <button class="btn btn-success add">Add new one</button>
        </form>
    </div>
    <div class="col-md-4 col">
        <form method="post" action="/findUser">
        <div class="input-group">
            <input type="text" class="form-control" name="name" placeholder="Search for...">
      <span class="input-group-btn">
        <button class="btn btn-primary">Search</button>
      </span>
        </div>
            </form>
    </div>
    <div class="col-md-3"></div>
</div>
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-2 page">
                <form method="get" action="/all">

                <c:forEach var="page" items="${pages}">
                    <button class="btn btn-primary" name="page" value="${page}">${page}</button>
                </c:forEach>
                    </form>


            </div>
        </div>

</body>
</html>

