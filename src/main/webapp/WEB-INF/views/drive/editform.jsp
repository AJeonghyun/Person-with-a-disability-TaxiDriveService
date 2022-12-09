<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/02
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Edit form</title>
</head>
<body>
<form:form modelAttribute="taxiVO" method="POST" action="../editok">
    <form:hidden path="id"/>
    <table id="edit">
        <tr><td>이름</td><td><form:input path="username"/></td></tr>
        <tr><td>전화번호</td><td><form:input path="phonenumber"/></td></tr>
        <tr><td>출발지</td><td><form:input path="departure"/></td></tr>
        <tr><td>도착지</td><td><form:input path="arrival"/></td></tr>
        <tr><td>장애등급</td><td><form:input path="grade"/></td></tr>
<%--        <tr><td>예약날짜</td><td><form:input type="date" path="reserveDate"/></td></tr>--%>
    </table>
    <input type="button" value="취소하기" onclick="history.back()"/>
    <input type="submit" value="수정하기"/>
</form:form>
</body>
</html>