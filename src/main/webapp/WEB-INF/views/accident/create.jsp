<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 14.10.2020
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Создание происшествия</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row" style="height: 35px; "></div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-6">
            <form name='accident' action="<c:url value='/create'/>" method='POST'>
                <div class="form-group">
                    <label for="name">Название</label>
                    <input type="text" class="form-control" id="name" name="name">
                </div>
                <div class="form-group">
                    <label for="text">Текст</label>
                    <textarea class="form-control" id="text" name="text" rows="3"></textarea>
                </div>
                <div class="form-group">
                    <label for="address">Адрес</label>
                    <input type="text" class="form-control" id="address" name="address">
                </div>
                <button type="submit" class="btn btn-primary">Создать</button>
            </form>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>
