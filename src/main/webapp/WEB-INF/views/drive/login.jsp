<%--
  Created by IntelliJ IDEA.
  User: anjeonghyeon
  Date: 2022/12/09
  Time: 12:11 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE>
<html>
<head>
  <meta charset="UTF-8">
  <title>Login</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

  <style>
    img,label {display: inline-block;}
    label {width:130px}
    button {background-color: blue; color:white;font-size:15px}
  </style>
</head>

<body>
<div style="width:100%;text-align: center;padding-top:100px">
  <img src="../img/test.png" height="300">

  <form method="post" action="loginok">
    <div class="mt-3"><label>User ID: </label><input type="text" name="userid"/></div>
    <div class="mt-3"><label>Password: </label>
         <input type="password" name="password"/></div>
    <button class="btn btn-secondary btn-lg btn-block active mt-3" type="submit">login</button>
  </form>
</div>
</body>
</html>
