<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit User</title>

    <link href="<c:url value="/assets/css/bootstrap.css" />" rel="stylesheet">
    <link href="<c:url value="/assets/css/style.css" />" rel="stylesheet">
</head>
<body class="all">
<form:form method="post" action="/userSaveOrUpdate" modelAttribute="dto">

    <div class="row head-table">
        <div class="col-md-4"></div>
        <div class="col-md-2">
            <h2>New User Name:</h2>
        </div>
        <div class="col-md-2">
            <input type="text" name="name" class="form-control text"  value="${dto.name}" required/>
        </div>
        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-2">
            <h2>New User Age:</h2>
        </div>
        <div class="col-md-2">
            <input type="text" name="age" class="form-control text" value="${dto.age}" pattern="[0-9]{1,3}" required/>
        </div>
        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-2">
            <h2>Decide your status:</h2>
        </div>
        <div class="col-md-2">
            <div class="row">
            <c:choose>
                <c:when test="${dto.isAdmin.equals('true')}">
                    <div class="col-md-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="isAdmin" value="true" required checked><h3>Admin</h3><Br>
                            </label>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="radio">
                            <label>
                                <input type="radio" name="isAdmin" value="false" required><h3>User</h3><Br>
                            </label>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                <div class="col-md-6">
                    <div class="radio">
                        <label>
                            <input type="radio" name="isAdmin" value="true" required ><h3>Admin</h3><Br>
                        </label>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="radio">
                        <label>
                            <input type="radio" name="isAdmin" value="false" required checked><h3>User</h3><Br>
                        </label>
                    </div>
                </div>
                </c:otherwise>
            </c:choose>
            </div>
        </div>
        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-2">
            <input type="hidden" name="id" value=${dto.id}>
            <c:if test="${dto.id == null}">
                <button class="btn btn-success add">Add</button>
            </c:if>
            <c:if test="${dto.id != null}">
                <button class="btn btn-warning add" >Edit</button>
            </c:if>
        </div>
        </form:form>

        <div class="col-md-2">
            <form method="get" action="/all">
                <button class="btn btn-primary add">Cancel</button>
            </form>
        </div>
        <div class="col-md-4"></div>
    </div>
</body>
</html>
