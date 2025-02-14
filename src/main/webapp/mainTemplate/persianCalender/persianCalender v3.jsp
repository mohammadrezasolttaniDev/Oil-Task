<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>تقویم فارسی</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }

        #calendar {
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        #header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        #month {
            font-size: 24px;
        }

        button {
            background: none;
            border: none;
            font-size: 20px;
            cursor: pointer;
        }

        #days, #dates {
            display: grid;
            grid-template-columns: repeat(7, 1fr);
            margin-top: 10px;
        }

        .day, .date {
            text-align: center;
            padding: 10px;
        }

        .date {
            cursor: pointer;
        }

        .date:hover {
            background: #ddd;
            border-radius: 5px;
        }

        .date.current {
            background: #2196F3;
            color: white;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div id="calendar">
        <div id="header">
            <button id="prev">&lt;</button>
            <div id="month"></div>
            <button id="next">&gt;</button>
        </div>
        <div id="days">
            <div class="day">شنبه</div>
            <div class="day">یکشنبه</div>
            <div class="day">دوشنبه</div>
            <div class="day">سه‌شنبه</div>
            <div class="day">چهارشنبه</div>
            <div class="day">پنج‌شنبه</div>
            <div class="day">جمعه</div>
        </div>
        <div id="dates"></div>
    </div>
    <script>
        const monthNames = ["فروردین", "اردیبهشت", "خرداد", "تیر", "مرداد", "شهریور", "مهر", "آبان", "آذر", "دی", "بهمن", "اسفند"];
        const daysInMonth = [31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 30, 29]; // توجه: در نظر گرفتن سال کبیسه نیازمند محاسبات اضافی است

        let currentMonth = 0; // ماه شروع، فروردین
        let currentYear = 1400; // سال شروع

        document.getElementById('prev').addEventListener('click', () => changeMonth(-1));
        document.getElementById('next').addEventListener('click', () => changeMonth(1));

        function changeMonth(direction) {
            currentMonth += direction;
            if (currentMonth < 0) {
                currentMonth = 11;
                currentYear--;
            } else if (currentMonth > 11) {
                currentMonth = 0;
                currentYear++;
            }
            renderCalendar();
        }

        function gregorianToJalali(g_y, g_m, g_d) {
            const g_days_in_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
            const j_days_in_month = [31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29, 29];
            let gy = g_y - 1600;
            let gm = g_m - 1;
            let gd = g_d - 1;
            let g_day_no = 365 * gy + Math.floor((gy + 3) / 4) - Math.floor((gy + 99) / 100) + Math.floor((gy + 399) / 400);
            for (let i = 0; i < gm; ++i)
                g_day_no += g_days_in_month[i];
            if (gm > 1 && ((gy % 4 == 0 && gy % 100 != 0) || (gy % 400 == 0)))
                ++g_day_no;
            g_day_no += gd;
            let j_day_no = g_day_no - 79;
            let j_np = Math.floor(j_day_no / 12053);
            j_day_no %= 12053;
            let jy = 979 + 33 * j_np + 4 * Math.floor(j_day_no / 1461);
            j_day_no %= 1461;
            if (j_day_no >= 366) {
                jy += Math.floor((j_day_no - 1) / 365);
                j_day_no = (j_day_no - 1) % 365;
            }
            let i;
            for (i = 0; i < 11 && j_day_no >= j_days_in_month[i]; ++i)
                j_day_no -= j_days_in_month[i];
            let jm = i + 1;
            let jd = j_day_no + 1;
            return { jy, jm, jd };
        }

        function renderCalendar() {
            const today = new Date();
            const { jy: year, jm: month, jd: day } = gregorianToJalali(today.getFullYear(), today.getMonth() + 1, today.getDate());

            if (currentYear !== year) {
                currentYear = year;
                currentMonth = month - 1;
            }

            document.getElementById('month').textContent = monthNames[currentMonth] + ' ' + currentYear;

            const dates = document.getElementById('dates');
            dates.innerHTML = '';
            for (let i = 1; i <= daysInMonth[currentMonth]; i++) {
                const dateElement = document.createElement('div');
                dateElement.className = 'date';
                dateElement.textContent = i;
                if (i === day && currentMonth === month - 1) {
                    dateElement.classList.add('current');
                }
                dates.appendChild(dateElement);
            }
        }

        renderCalendar();
    </script>
</body>
</html>
