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
<form>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label style="float: right" for="inputEmail4">ایمیل</label>
            <input type="email" class="form-control" id="inputEmail4" placeholder="ایمیل" style="text-align: right;">
        </div>
        <div class="form-group col-md-6">
            <label style="float: right" for="inputPassword4">رمز عبور</label>
            <input type="password" class="form-control" id="inputPassword4" placeholder="رمز عبور" style="text-align: right;">
        </div>
    </div>
    <div class="form-group">
        <label style="float: right" for="inputAddress">آدرس</label>
        <input type="text" class="form-control" id="inputAddress" placeholder="۱۲۳۴ خیابان اصلی" style="text-align: right;">
    </div>
    <div class="form-group">
        <label style="float: right" for="inputAddress2">آدرس ۲</label>
        <input type="text" class="form-control" id="inputAddress2" placeholder="آپارتمان، استودیو یا طبقه" style="text-align: right;">
    </div>
    <div class="form-row">
        <div class="form-group col-md-6">
            <label style="float: right" for="inputCity">شهر</label>
            <input type="text" class="form-control" id="inputCity" style="text-align: right;">
        </div>
        <div class="form-group col-md-4">
            <label style="float: right" for="inputState">استان</label>
            <select id="inputState" class="form-control" style="text-align: right;">
                <option selected>انتخاب کنید...</option>
                <option>...</option>
            </select>
        </div>
        <div class="form-group col-md-2">
            <label style="float: right" for="inputZip">کد پستی</label>
            <input type="text" class="form-control" id="inputZip" style="text-align: right;">
        </div>
    </div>
    <button style="float: right" type="submit" class="btn btn-primary">ثبت</button>
</form>

</body>
</html>
