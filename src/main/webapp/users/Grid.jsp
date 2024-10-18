<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.11.3/font/bootstrap-icons.min.css">
    <style>
        .table-container {
            max-height: 400px; /* حداکثر ارتفاع */
            /*max-width: auto;*/
            overflow-y: auto; /* نمایش اسکرول عمودی */
            overflow-x: hidden; /* پنهان کردن اسکرول افقی */
        }
        th{
            direction: rtl;
        }
    </style>
</head>
<body>
<div class="table-container table-responsive">
    <table class="table" style="direction: rtl;">
        <thead style="position: sticky;top: 0;z-index: 10;background-color: #f2f2f2;">
        <tr>
            <th style="text-align: right;">نام</th>
            <th style="text-align: right;">نام خانوادگی</th>
            <th style="text-align: right;">ایمیل</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td style="text-align: right;">22255</td>
            <td style="text-align: right;">Defaultson</td>
            <td style="text-align: right;">def@somemail.com</td>
        </tr>
        <tr class="success">
            <td style="text-align: right;">موفق</td>
            <td style="text-align: right;">Doe</td>
            <td style="text-align: right;">john@example.com</td>
        </tr>
        <tr class="danger">
            <td style="text-align: right;">خطر</td>
            <td style="text-align: right;">Moe</td>
            <td style="text-align: right;">mary@example.com</td>
        </tr>
        <tr class="info">
            <td style="text-align: right;">اطلاعات</td>
            <td style="text-align: right;">Dooley</td>
            <td style="text-align: right;">july@example.com</td>
        </tr>
        <!-- Extra Rows -->
        <tr>
            <td style="text-align: right;">22255</td>
            <td style="text-align: right;">Defaultson</td>
            <td style="text-align: right;">def@somemail.com</td>
        </tr>
        <tr class="success">
            <td style="text-align: right;">موفق</td>
            <td style="text-align: right;">Doe</td>
            <td style="text-align: right;">john@example.com</td>
        </tr>
        <tr class="danger">
            <td style="text-align: right;">خطر</td>
            <td style="text-align: right;">Moe</td>
            <td style="text-align: right;">mary@example.com</td>
        </tr>
        <tr class="info">
            <td style="text-align: right;">اطلاعات</td>
            <td style="text-align: right;">Dooley</td>
            <td style="text-align: right;">july@example.com</td>
        </tr>
        <tr>
            <td style="text-align: right;">22255</td>
            <td style="text-align: right;">Defaultson</td>
            <td style="text-align: right;">def@somemail.com</td>
        </tr>
        <tr class="success">
            <td style="text-align: right;">موفق</td>
            <td style="text-align: right;">Doe</td>
            <td style="text-align: right;">john@example.com</td>
        </tr>
        <tr class="danger">
            <td style="text-align: right;">خطر</td>
            <td style="text-align: right;">Moe</td>
            <td style="text-align: right;">mary@example.com</td>
        </tr>
        <tr class="info">
            <td style="text-align: right;">اطلاعات</td>
            <td style="text-align: right;">Dooley</td>
            <td style="text-align: right;">july@example.com</td>
        </tr>
        </tbody>
    </table>

</div>
</body>
</html>

