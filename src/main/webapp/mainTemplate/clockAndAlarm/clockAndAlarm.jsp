<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>برنامه آلارم</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
            font-family: 'Arial', sans-serif;
        }
        .wrapper {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .timer-display {
            font-size: 48px;
            margin-bottom: 20px;
        }
        .container {
            display: flex;
            flex-direction: column;
            gap: 10px;
            align-items: center;
        }
        .inputs {
            display: flex;
            gap: 10px;
        }
        .inputs input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 60px;
            text-align: center;
            transition: box-shadow 0.3s ease;
        }
        .inputs input:hover {
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
        }
        .inputs label {
            font-size: 16px;
        }
        #set {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        #set:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        #set:active {
            background-color: #004494;
        }
        .activeAlarms {
            margin-top: 20px;
            width: 100%;
        }
        .alarm-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 10px;
            background-color: #f9f9f9;
            transition: background-color 0.3s ease;
        }
        .alarm-item:hover {
            background-color: #f1f1f1;
        }
        .modal-bg {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            justify-content: center;
            align-items: center;
        }
        .modal {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
            text-align: center;
            animation: shake 0.5s infinite, pause 3s infinite;
        }
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-10px); }
            50% { transform: translateX(10px); }
            75% { transform: translateX(-10px); }
        }
        @keyframes pause {
            0%, 100% { animation: none; }
        }
        .modal-button {
            margin-top: 10px;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }
        .modal-button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="wrapper">
        <div class="timer-display" id="timerDisplay">00:00:00</div>
        <div class="container">
            <div class="inputs">
                <label for="hourInput">ساعت</label>
                <input type="number" id="hourInput" placeholder="12" min="0" max="23" value="12" />
                <label for="minuteInput">دقیقه</label>
                <input type="number" id="minuteInput" placeholder="30" min="0" max="59" value="30" />
            </div>
            <input type="text" id="alarmTitle" placeholder="عنوان آلارم" />
            <button id="set">افزودن آلارم</button>
            <div class="activeAlarms" id="activeAlarms"></div>
        </div>
    </div>
    <div class="modal-bg" id="alarmModalBg">
        <div class="modal" id="alarmModal">
            <div id="modalTitle">آلارم به صدا در آمد!</div>
            <button class="modal-button" onclick="closeModal()">بستن</button>
        </div>
    </div>
    <script>
        const timerDisplay = document.getElementById('timerDisplay');
        const hourInput = document.getElementById('hourInput');
        const minuteInput = document.getElementById('minuteInput');
        const alarmTitleInput = document.getElementById('alarmTitle');
        const setButton = document.getElementById('set');
        const activeAlarms = document.getElementById('activeAlarms');
        const alarmModalBg = document.getElementById('alarmModalBg');
        const alarmModal = document.getElementById('alarmModal');
        const modalTitle = document.getElementById('modalTitle');

        function updateTimerDisplay() {
            const now = new Date();
            const hours = String(now.getHours()).padStart(2, '0');
            const minutes = String(now.getMinutes()).padStart(2, '0');
            const seconds = String(now.getSeconds()).padStart(2, '0');
            timerDisplay.textContent = `${hours}:${minutes}:${seconds}`;
        }

        setInterval(updateTimerDisplay, 1000);

        function setAlarm() {
            const hour = hourInput.value.padStart(2, '0');
            const minute = minuteInput.value.padStart(2, '0');
            const alarmTitle = alarmTitleInput.value;

            if (hour && minute && alarmTitle) {
                const alarmTime = `${hour}:${minute}`;
                const alarmItem = document.createElement('div');
                alarmItem.className = 'alarm-item';
                alarmItem.innerHTML = `
                    <span>${alarmTitle} - ${alarmTime}</span>
                    <button onclick="removeAlarm(this)">حذف</button>
                `;
                activeAlarms.appendChild(alarmItem);

                const now = new Date();
                const alarmDate = new Date(now.toDateString() + ` ${alarmTime}:00`);
                const timeToAlarm = alarmDate - now;
                if (timeToAlarm > 0) {
                    setTimeout(() => {
                        modalTitle.textContent = `آلارم: ${alarmTitle}`;
                        alarmModalBg.style.display = 'flex';
                    }, timeToAlarm);
                } else {
                    alert('لطفاً زمان معتبر وارد کنید.');
                }

                // پاک کردن فیلد عنوان پس از ثبت آلارم
                alarmTitleInput.value = '';
            } else {
                alert('لطفاً زمان و عنوان آلارم را وارد کنید.');
            }
        }

        setButton.addEventListener('click', setAlarm);

        function removeAlarm(button) {
            const alarmItem = button.parentElement;
            alarmItem.remove();
        }

        function closeModal() {
            alarmModalBg.style.display = 'none';
        }
    </script>
</body>
</html>
