<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>قالب سایت</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="mainTemplate/css/templateStyle.css">
</head>
<body style="background-color:rgba(215,215,215,0.63);">
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="nav-link text-light" href="#"><i class="bi bi-person-fill"></i></a>
<%--        <img src="logo.png" height="40" width="120">--%>
</nav>
<div class="sidebar" id="sidebar">
    <button class="btn" id="toggleSidebar"><i class="bi bi-list"></i></button>
    <div id="searchContainer">
        <input type="text" id="searchInput" class="form-control" placeholder="جستجو..." style="direction: rtl;">
    </div>
    <ul class="nav flex-column" id="menuItems">
        <li class="nav-item">
            <a style="color: #007bff;cursor: pointer" class="bi bi-house-door-fill nav-link" onclick="loadContent('home/home.jsp')"><strong
                    style="float: right;">خانه</strong></a>
        </li>
        <li class="nav-item">
            <a style="color: #007bff;cursor: pointer" class="bi bi-person-fill nav-link"  onclick="loadContent('users/Index.jsp')"> <strong
                    style="float: right;">کاربران</strong></a>
        </li>
    </ul>
</div>
<div class="content" id="content">
<%--<ul class="nav nav-tabs" role="tablist">--%>
<%--&lt;%&ndash;        <li class="nav-item">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <a class="nav-link active" data-toggle="tab" href="#home">ثبت اولیه</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </li>&ndash;%&gt;--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" data-toggle="tab" href="#menu1">ثبت اولیه</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--            <a class="nav-link" data-toggle="tab" href="#menu2">لیست</a>--%>
<%--        </li>--%>
<%--    </ul>--%>
<%--<div class="tab-content">--%>
<%--        <div id="menu1" class=" tab-pane fade"><br>--%>
<%--            <jsp:include page="users/Edit.jsp"/>--%>
<%--        </div>--%>
<%--        <div id="menu2" class=" tab-pane fade"><br>--%>
<%--            <jsp:include page="users/Grid.jsp"/>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<script src="mainTemplate/js/templateJs.js"></script>
</body>
</html>
