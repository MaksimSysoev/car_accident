<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 18.10.2020
  Time: 0:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Регистрация</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-12">
            <c:if test="${not empty errorMessge}">
                <div style="color:red; font-weight: bold; margin: 30px 0px 0px 0px; text-align: center; ">
                        ${errorMessge}
                </div>
            </c:if>
        </div>
    </div>

    <div class="row" style="height: 35px; "></div>

    <div class="row">
        <div class="col-3"></div>
        <div class="col-6">
            <form name='login' action="<c:url value='/reg'/>" method='POST'>
                <div class="form-group">
                        <label for="username">Логин</label>
                        <input type="text" class="form-control" id="username" name="username">
                    </div>
                <div class="form-group">
                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password">
                    </div>
                <button type="submit" class="btn btn-primary">Регистрация</button>
            </form>
        </div>
        <div class="col-3"></div>
    </div>
</div>

</body>
</html>
