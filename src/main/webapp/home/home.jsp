<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>صفحه چهار قسمتی</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        body, html {
            height: 100%;
            margin: 0;
            /*overflow: scroll;*/
            /*direction: rtl;*/
        }
        .container-fluid {
            height: 100%;
            padding: 20px; /* فاصله از اطراف بدنه اصلی */
            /*overflow-x: scroll;*/
        }
        .row {
            height: 50%;
            justify-content: space-between;
        }
        .col-md-5 {
            flex: 0 0 48%; /* عرض باکس‌ها افزایش یافته و فضای کافی برای فاصله */
            max-width: 95%;
            height: calc(100% - 20px); /* کم کردن 20 پیکسل برای فاصله */
            border: 1px solid rgba(0, 0, 0, 0.14);
            box-sizing: border-box;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.58);
            margin: 10px;
            border-radius: 5px;
            background-color: #fff;
            /*overflow: auto;*/
            padding: 20px; /* فاصله داخلی برای زیبایی */
            direction: rtl;
        }
        .user-info {
            display: flex;
            align-items: center;
            direction: rtl;
        }
        .user-info img {
            border-radius: 50%;
            width: 100px;
            height: 100px;
            margin-left: 20px;
        }
        .clock {
            font-size: 2rem;
            text-align: center;
            direction: rtl;
        }
        .todo-list {
            direction: rtl;
        }
        .todo-list input[type="checkbox"] {
            margin-left: 10px;
        }
        .calendar {
            direction: rtl;
        }
    </style>
</head>
<body>
<table class="container-fluid" dir="rtl">
<tr>
        <!-- باکس بالایی سمت چپ (اطلاعات کاربر) -->
    <td>
        <div class="col-md-5">
            <div class="user-info">
                <img id="myImg" src="../logo.png" alt="User Photo" onclick="aclic()">
                <div>
                    <h4>علیرضا محسنی</h4>
                    <p>تاریخ تولد : ۱۳۶۰/۰۱/۰۱</p>
                    <p>ساعت ورود : 8:40</p>
                    <p>سطح دسترسی : مدیر عامل</p>
                </div>
            </div>
        </div>
    </td>
    <td>
        <!-- باکس بالایی سمت راست (ساعت) -->
        <div class="col-md-5">
            <div class="clock" id="clock"></div>
        </div>
    </td>

</tr>
        <!-- باکس پایین سمت چپ (لیست وظایف) -->
    <tr>
        <td>
        <div class="col-md-5">
            <div class="todo-list">
                <h4>لیست وظایف</h4>
                <ul id="tasks">
                    <!-- نمونه تسک -->
                    <li><input type="checkbox"> تسک ۱</li>
                    <li><input type="checkbox"> تسک 2</li>
                    <li><input type="checkbox"> تسک 3</li>
                    <li><input type="checkbox"> تسک 4</li>
                </ul>
                <input type="text" id="newTask" placeholder="تسک جدید" class="form-control">
                <button onclick="addTask()" class="btn btn-primary mt-2">افزودن</button>
            </div>
        </div>
        </td>
        <!-- باکس پایین سمت راست (تقویم) -->
        <td>
        <div class="col-md-5">
            <div class="calendar" id="calendar">
                <h4>تقویم شمسی</h4>
                <div>تاریخ امروز: <span id="todayDate"></span></div>
                <iframe src="https://www.time.ir/" style="width:100%; height:100%; border:none;"></iframe> <!-- افزودن تقویم شمسی -->
            </div>
        </div>
        </td>
    </tr>
</table>
<!-- Trigger the Modal -->
<%--<img id="myImg" src="../logo.png" alt="Snow" style="width:100%;max-width:300px">--%>

<!-- The Modal -->
<div id="myModal" class="modal">

    <!-- The Close Button -->
    <span class="close">&times;</span>

    <!-- Modal Content (The Image) -->
    <img class="modal-content" id="img01">

    <!-- Modal Caption (Image Text) -->
    <div id="caption"></div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
