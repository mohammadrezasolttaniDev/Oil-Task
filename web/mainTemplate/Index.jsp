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
</head>
<body style="height:85%">
<!-- x navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <a class="nav-link text-light" href="#"><i class="bi bi-person-fill"></i></a>
</nav>

<!-- y navbar -->
<div class="sidebar" id="sidebar">
    <button class="btn" id="toggleSidebar"><i class="bi bi-list"></i></button>
    <div id="searchContainer">
        <input type="text" id="searchInput" class="form-control" placeholder="جستجو..." style="direction: rtl;">
    </div>
    <ul class="nav flex-column" id="menuItems">
        <li class="nav-item">
            <a class="nav-link active" href="#"><i class="bi bi-house-door-fill"></i> <strong
                    style="float: right;">خانه</strong></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-person-fill"></i> <strong
                    style="float: right;">پروفایل</strong></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-envelope-fill"></i> <strong
                    style="float: right;">پیام‌ها</strong></a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#"><i class="bi bi-gear-fill"></i> <strong style="float: right;">تنظیمات</strong></a>
        </li>
    </ul>
</div>

<!-- main contents -->
<div class="content" id="content">

</div>
</body>
</html>
