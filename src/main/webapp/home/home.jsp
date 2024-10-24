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
        }
        .container-fluid {
            height: 100%;
            padding: 20px; /* فاصله از اطراف بدنه اصلی */
        }
        .row {
            height: 50%;
            justify-content: center;
        }
        .col-md-5 {
            flex: 0 0 48%; /* عرض باکس‌ها افزایش یافته و فضای کافی برای فاصله */
            max-width: 48%;
            height: calc(100% - 20px); /* کم کردن 20 پیکسل برای فاصله */
            border: 1px solid rgba(0, 0, 0, 0.14);
            box-sizing: border-box;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.58);
            margin: 10px;
            border-radius: 5px;
            background-color: #f5f5f5;
        }
        @media (max-width: 768px) {
            .row {
                height: auto;
            }
            .col-md-5 {
                flex: 0 0 100%; /* در صفحات کوچکتر عرض باکس‌ها 100% بشه */
                max-width: 100%;
                margin-bottom: 20px;
            }
        }
    </style>
</head>
<body>
<div class="container-fluid h-100">
    <div class="row h-50">
        <div class="col-md-5"></div>
        <div class="col-md-5"></div>
    </div>
    <div class="row h-50">
        <div class="col-md-5"></div>
        <div class="col-md-5"></div>
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
