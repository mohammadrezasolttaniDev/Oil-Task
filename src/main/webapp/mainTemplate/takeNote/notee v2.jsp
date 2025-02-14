<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>دفترچه یادداشت</title>
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

        #notebook {
            background: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            width: 300px;
        }

        #notebook h2 {
            margin: 0 0 10px 0;
            text-align: center;
        }

        #notebook textarea {
            width: 100%;
            height: 100px;
            margin-bottom: 10px;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
            box-sizing: border-box;
            resize: none; /* این خط برای ثابت کردن سایز تکست باکس */
        }

        #notebook button {
            width: 100%;
            padding: 10px;
            background-color: #2196F3;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        #notebook button:hover {
            background-color: #1976D2;
        }

        #notes {
            margin-top: 20px;
        }

        .note {
            background: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .note.complete {
            text-decoration: line-through;
            background: #d3ffd3;
        }

        .note-actions {
            display: flex;
            gap: 5px;
        }

        .note-actions button {
            background: none;
            border: none;
            cursor: pointer;
        }

        .note-actions .delete {
            color: red;
        }

        .note-actions .complete {
            color: green;
        }
    </style>
</head>
<body>
    <div id="notebook">
        <h2>دفترچه یادداشت</h2>
        <textarea id="noteInput" placeholder="یادداشت خود را وارد کنید..."></textarea>
        <button onclick="addNote()">ثبت یادداشت</button>
        <div id="notes"></div>
    </div>

    <script>
        function addNote() {
            const noteInput = document.getElementById('noteInput');
            const noteText = noteInput.value.trim();

            if (noteText !== '') {
                const notes = document.getElementById('notes');
                const noteElement = document.createElement('div');
                noteElement.className = 'note';

                const noteContent = document.createElement('span');
                noteContent.textContent = noteText;

                const noteActions = document.createElement('div');
                noteActions.className = 'note-actions';

                const completeButton = document.createElement('button');
                completeButton.className = 'complete';
                completeButton.innerHTML = '✔';
                completeButton.onclick = () => {
                    noteElement.classList.toggle('complete');
                };

                const deleteButton = document.createElement('button');
                deleteButton.className = 'delete';
                deleteButton.innerHTML = '❌';
                deleteButton.onclick = () => {
                    notes.removeChild(noteElement);
                };

                noteActions.appendChild(completeButton);
                noteActions.appendChild(deleteButton);

                noteElement.appendChild(noteContent);
                noteElement.appendChild(noteActions);

                notes.appendChild(noteElement);

                noteInput.value = '';
            }
        }
    </script>
</body>
</html>
