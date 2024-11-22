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
        <a class="nav-link text-light" href="#"  data-toggle="modal" data-target="#exampleModal"><i class="bi bi-person-fill"></i></a>
<%--        <img src="logo.png" height="40" width="120">--%>
</nav>
<div class="sidebar" id="sidebar">
    <button class="btn" id="toggleSidebar"><i class="bi bi-list"></i></button>
    <div id="searchContainer">
        <input type="text" id="searchInput" class="form-control" placeholder="جستجو..." style="direction: rtl;">
    </div>
    <ul class="nav flex-column" id="menuItems">
        <li class="nav-item">
            <a style="color: rgb(255,255,255);cursor: pointer" class="bi bi-house-door-fill nav-link active" onclick="loadContent('home/home.jsp')"><strong
                    style="float: right;">خانه</strong></a>
        </li>
        <li class="nav-item">
            <a style="color: #ffffff;cursor: pointer" class="bi bi-person-fill nav-link" onclick="loadContent('users/Index.jsp')"> <strong
                    style="float: right;">کاربران</strong></a>
        </li>
    </ul>
</div>

<div class="content" id="content">
</div>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
<script src="mainTemplate/js/templateJs.js"></script>
</body>
</html>
