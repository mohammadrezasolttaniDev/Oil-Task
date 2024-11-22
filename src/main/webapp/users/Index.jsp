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
    <ul class="nav nav-tabs" role="tablist">
    <%--        <li class="nav-item">--%>
    <%--            <a class="nav-link active" data-toggle="tab" href="#home">ثبت اولیه</a>--%>
    <%--        </li>--%>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu1">ثبت اولیه</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" data-toggle="tab" href="#menu2" >لیست</a>
            </li>
        </ul>
    <div class="tab-content">
            <div id="menu1" class=" tab-pane fade"><br>
                <jsp:include page="Edit.jsp"/>
            </div>
            <div id="menu2" class=" tab-pane fade"><br>
                <jsp:include page="Grid.jsp"/>
            </div>
        </div>
    <script src="mainTemplate/js/templateJs.js"></script>
</body>
</html>
