<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/02
  Time: 9:06 PM
  To change this template use File | Settings | File Templates.
--%><%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>
<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<head>
  <title>Title</title>
</head>
<body>
<form action="addok" method="post">
  <table id="edit">
    <tr><td>이름</td><td><input type="text" name="username"/></td></tr>
    <tr><td>전화번호</td><td><input type="text" name="phonenumber"></td></tr>
    <tr><td>출발지</td><td><input type="text" name="departure"></td></tr>
    <tr><td>도착지</td><td><input type="text" name="arrival"></td></tr>
    <tr><td>장애등급</td><td><input type="text" name="grade"></td></tr>
<%--    <tr><td>예약날짜</td><td><input type="date" name="reserveDate"></td></tr>--%>
  </table>
  <button type="button" onclick="location.href='list'">목록보기</button>
  <button type="submit">등록하기</button>
</form>
</body>
</html>
