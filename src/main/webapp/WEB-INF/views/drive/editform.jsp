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
<%@ taglib prefix="font-weight" uri="http://www.springframework.org/tags/form" %>

<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

    <title>Edit form</title>
</head>
<body>
<div class="py-5 text-center">
    <h1>택시 호출 서비스</h1>
</div>
<div class="col-md-7 col-lg-8 d-flex flex-wrap justify-content-center container-fluid">
<form:form modelAttribute="taxiVO" method="POST" action="../editok">
    <form:hidden path="id"/>
    <table id="edit">

        <div class="col-sm-6 m-3">
        <tr>
            <label for="username" class="form-label style="font-weight:="bold" >이름</label>
            <form:input path="username" class="form-control"/>
        </tr>
        </div>

        <div class="col-sm-6 m-3">
        <tr>
            <label for="phonenumber" class="form-label style="font-weight:="bold" >전화번호</label>
            <form:input path="phonenumber" class="form-control"/>
        </tr>
        </div>

        <div class="col-sm-6 m-3">
        <tr>
            <label for="departure" class="form-label style="font-weight:="bold" >출발지</label>
            <form:input path="departure" class="form-control"/></tr>
        </div>

        <div class="col-sm-6 m-3">
        <tr>
            <label for="arrival" class="form-label style="font-weight:="bold" >도착지</label>
            <form:input path="arrival" class="form-control"/></tr>
        </div>

        <div class="col-sm-6 m-3">
        <tr>
            <label class="form-label">장애등급</label>
            <select name="grade" id="grade" class="form-control form-select" aria-label="장애등급">
                <option value="" disabled selected>등급을 선택해주세요</option>
                <option value="1">1급</option>
                <option value="2">2급</option>
                <option value="3">3급</option>
                <option value="4">4급</option>
                <option value="5">5급</option>
                <option value="6">6급</option>
            </select>
        </tr>
        </div>

        <div class="col-sm-6 m-3">
            <tr>
                <label for="reserveDate" class="form-label style="font-weight:="bold" >예약날짜</label>
                <form:input type="date" path="reserveDate" class="form-control"/>
            </tr>
        </div>

        <label class="mt-3">휠체어</label>
        <div>
        <div class="form-check col-sm-6 mt-2">
            <input class="form-check-input" type="radio" name="wheelchair" id="wheelchair" value="true">
            <label class="form-check-label" for="wheelchair">
                있음
            </label>
        </div>
        <div class="form-check col-sm-6 mt-2">
            <input class="form-check-input" type="radio" name="wheelchair" id="wheelchair2" value="false">
            <label class="form-check-label" for="wheelchair2">
                없음
            </label>
        </div>
        </div>
        <div class="m-3">
            <button class="btn btn-outline-success me-2" type="button" onclick="history.back()">View All Records</button>
            <button class="btn btn-outline-primary me-2" type="submit">수정하기</button>
        </div>
    </table>
</form:form>
</div>
</body>
</html>