<%--
  Created by IntelliJ IDEA.
  User: Maxim
  Date: 14.10.2020
  Time: 23:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Update</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row" style="height: 35px; "></div>
    <div class="row">
        <div class="col-2"></div>
        <div class="col-6">
            <form name="accident" action="<c:url value='/update?id=${accident.id}'/>" method='POST'>
                <table>
                    <tr>
                        <td>Название:</td>
                        <td><input type='text' name='name' value="${accident.name}"></td>
                        <td><input type='text' name='text' value="${accident.text}"></td>
                        <td><input type='text' name='address' value="${accident.address}"></td>
                    </tr>
                    <tr><td style="height: 20px;"></td></tr>
                    <tr>
                        <td colspan='2'><button type="submit" class="btn btn-primary">Сохранить</button></td>
                    </tr>
                    <tr><td style="height: 20px;"></td></tr>
                    <tr><td rowspan="2"><a href="./">На главную</a></td></tr>
                </table>
            </form>
        </div>
        <div class="col-2"></div>
    </div>
</div>

</body>
</html>
