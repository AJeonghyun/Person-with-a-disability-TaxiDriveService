<%@ taglib prefix="font-weight" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/02
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<head>
  <title>Add New Post</title>
</head>
<body>
<div class="py-5 text-center">
  <h1>택시 호출 서비스</h1>
</div>

<div class="col-md-7 col-lg-8 d-flex flex-wrap justify-content-center container-fluid">
<form action="addok" method="post">
  <table id="edit">
    <div class="col-sm-6 m-3">
    <tr>
      <label for="username" class="form-label style="font-weight:="bold" >이름</label>
      <input type="text" class="form-control" name="username" id="username" placeholder="이름" />
    </tr>
    </div>

    <div class="col-sm-6 m-3">
    <tr>
      <label for="phonenumber" class="form-label style="font-weight:="bold" >전화번호</label>
      <input type="text" name="phonenumber" id="phonenumber" class="form-control" placeholder="전화번호 EX)010-xxxx-xxxx">
    </tr>
    </div>

    <div class="col-sm-6 m-3">
    <tr>
      <label for="departure" class="form-label style="font-weight:="bold" >출발지</label>
      <input type="text" name="departure" id="departure" class="form-control" placeholder="출발지">
    </tr>
    </div>

    <div class="col-sm-6 m-3">
    <tr>
      <label for="arrival" class="form-label style="font-weight:="bold" >도착지</label>
      <input type="text" name="arrival" id="arrival" class="form-control" placeholder="도착지">
    </tr>
    </div>

    <div class="col-sm-6 m-3 ">
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

    <div class="col-sm-6 m-3 ">
    <tr>
      <label for="reserveDate" class="form-label style="font-weight:="bold" >예약날짜</label>
      <input type="date" name="reserveDate" id="reserveDate" class="form-control">
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
  <button class="btn btn-outline-success me-2" type="button" onclick="location.href='list'">View All Records</button>
  <button class="btn btn-outline-primary me-2" type="submit">Add</button>
    </div>
  </table>
</form>
</div>
</body>
</html>
