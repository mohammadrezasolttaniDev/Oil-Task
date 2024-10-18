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
<body>
<!-- x navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
        <a class="nav-link text-light" href="#"><i class="bi bi-person-fill"></i></a>
<%--        <img src="logo.png" height="40" width="120">--%>
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
                    style="float: right;" href="Index.jsp">کاربران</strong></a>
        </li>
    </ul>
</div>

<!-- main contents -->
<div class="content" id="content">

    <ul class="nav nav-tabs" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">ثبت اولیه</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1">تایید اولیه</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu2">لیست</a>
        </li>
    </ul>

    <!-- Tab panes -->
    <div class="tab-content">
<%--        <div id="home" class="container tab-pane active"><br>--%>
<%--            <h3>HOME</h3>--%>
<%--            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>--%>
<%--        </div>--%>
        <div id="menu1" class=" tab-pane fade"><br>
            <jsp:include page="users/Edit.jsp"/>
        </div>
        <div id="menu2" class=" tab-pane fade"><br>
            <jsp:include page="users/Grid.jsp"/>
        </div>
    </div>
</div>

<script>
    var sidebar = document.getElementById('sidebar');
    var content = document.getElementById('content');
    var searchContainer = document.getElementById('searchContainer');
    var toggleSidebar = document.getElementById('toggleSidebar');
    var searchInput = document.getElementById('searchInput');
    var menuItems = document.getElementById('menuItems').getElementsByTagName('a');

    toggleSidebar.addEventListener('click', function () {
        sidebar.classList.toggle('collapsed');
        if (sidebar.classList.contains('collapsed')) {
            content.style.marginRight = '60px';
            searchContainer.style.display = 'none';
        } else {
            content.style.marginRight = '210px';
            searchContainer.style.display = 'block';
        }
    });

    // Show the search box by default when the page loads
    window.addEventListener('load', function () {
        searchContainer.style.display = 'block';
    });

    // JavaScript for filtering search results
    searchInput.addEventListener('keyup', function () {
        var filter = searchInput.value.toUpperCase();
        for (var i = 0; i < menuItems.length; i++) {
            var a = menuItems[i];
            var txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                menuItems[i].style.display = "";
            } else {
                menuItems[i].style.display = "none";
            }
        }
    });

    function closeDiv() {
        var contentdocumentDiv = document.getElementById("content");
        var tabpennel = document.getElementById("tab");
        contentdocumentDiv.style.visibility = 'hidden';
        tabpennel.style.visibility = 'hidden';
    }

    function changeNavbar(evt, partName) {
        var i, tabcontent, tablinks;
        tabcontent = document.getElementsByClassName("tabcontent");
        for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
        }
        tablinks = document.getElementsByClassName("tablinks");
        for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
        }
        document.getElementById(partName).style.display = "block";
        evt.currentTarget.className += " active";
    }
</script>
</body>
</html>
