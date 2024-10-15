<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/15/2024
  Time: 7:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css">
</head>
<body>
<form class="form-inline" action="#">
    <div class="form-group">
        <label for="email">ایمیل </label>
        <input type="email" class="form-control" id="email">
    </div>
    <div class="form-group">
        <label for="pwd">گذاره واژه</label>
        <input type="password" class="form-control" id="pwd">
    </div>
</form>
<form class="form-inline" action="#">
    <div class="form-group">
        <label for="pwd">نام</label>
        <input type="text" class="form-control" id="pw2d">
    </div>
    <div class="form-group">
        <label for="pwd">نام خانوادگی</label>
        <input type="text" class="form-control" id="pw52d">
    </div>
</form>
<button style="background-color: #007bff;color: white" type="submit" class="btn btn-default">ثبت</button>
</body>
</html>
