<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Происшествия</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row" style="height:45px; "></div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8"><h4>Список происшествий</h4>
        </div>
        <div class="col-2"></div>
    </div>
    <div class="row" style="height:30px; "></div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-8">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Название</th>
                        <th scope="col">Текст</th>
                        <th scope="col">Адрес</th>
                        <th scope="col">Действие</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${accidents}" var="accident">
                        <tr>
                            <td><c:out value="${accident.name}"/></td>
                            <td><c:out value="${accident.text}"/></td>
                            <td><c:out value="${accident.address}"/></td>
                            <td>
                                <c:if test = "${user.authorities == '[ROLE_USER]'}">
                                    <a class="btn btn-outline-primary btn-sm" href="<c:url value='/update?id=${accident.id}'/>" role="button">Редактировать</a>
                                </c:if>
                                <c:if test = "${user.authorities == '[ROLE_ADMIN]'}">
                                    <a class="btn btn-outline-primary btn-sm" href="<c:url value='/update?id=${accident.id}'/>" role="button">Редактировать</a>
                                    <a class="btn btn-outline-primary btn-sm" href="<c:url value='/delete?id=${accident.id}'/>" role="button">Удалить</a>
                                </c:if>
                            </td>
                        </tr>
                    </c:forEach>
                <tr>
                    <td>
                        <a class="btn btn-primary" href="create" role="button">Создать</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>